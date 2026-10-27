#!/usr/bin/env bash
# verify.sh — check the ceremony end to end from public inputs.
#
# For every circuit in circuits.json this
#   1. fetches <circuit>.r1cs and <circuit>_final.zkey (assets of the release
#      of the circuit's ceremony) and the circuit's Phase 1 .ptau (PSE Perpetual
#      Powers of Tau), and checks each against the SHA-256 recorded in circuits.json;
#   2. runs `snarkjs zkey verify`, which rebuilds the initial zkey from the
#      r1cs and the ptau and checks every contribution in the chain;
#   3. compares the circuit hash and every contribution name and hash snarkjs
#      prints with the transcript in circuits.json;
#   4. re-exports the verification key and the Solidity verifier from the
#      final zkey and compares them with the files under circuits/.
#
#   bin/verify.sh                                  # every circuit, about 9 GB of downloads
#   bin/verify.sh --only verifySingleWithdrawal_2_30
#   bin/verify.sh --cache /some/dir                # where downloads are kept, default ./cache
#
# A cached file whose hash matches is not downloaded again, so the script can
# be rerun, and can run offline from a cache that was filled some other way.
#
# snarkjs: the executable named by SNARKJS, else `npx --yes snarkjs@0.7.6`.
# 0.7.6 is the version the ceremony ran on; other versions may render the
# Solidity verifier differently and fail step 4 for that reason alone.
set -euo pipefail

ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
MANIFEST="${ROOT}/circuits.json"
CACHE="${ROOT}/cache"
ONLY=""

while [ $# -gt 0 ]; do
  case "$1" in
    --only) ONLY="${2:?}"; shift 2 ;;
    --cache) CACHE="${2:?}"; shift 2 ;;
    -h|--help) sed -n '2,24p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    *) echo "Unknown argument: $1 (see --help)" >&2; exit 2 ;;
  esac
done

for tool in curl jq node; do
  command -v "$tool" >/dev/null || { echo "missing required tool: $tool" >&2; exit 1; }
done
if command -v sha256sum >/dev/null; then SHA256=(sha256sum); else SHA256=(shasum -a 256); fi
if [ -n "${SNARKJS:-}" ]; then SNARKJS_CMD=("$SNARKJS"); else SNARKJS_CMD=(npx --yes snarkjs@0.7.6); fi

WORK="${CACHE}/work"
mkdir -p "$WORK"

sha256_of() { "${SHA256[@]}" "$1" | cut -d' ' -f1; }

# fetch <url> <dest> <sha256>: keep a cached file whose hash matches, else
# download it and check it.
fetch() {
  local url="$1" dest="$2" want="$3"
  if [ -f "$dest" ] && [ "$(sha256_of "$dest")" = "$want" ]; then return 0; fi
  echo "   downloading $(basename "$dest")"
  curl -fL --retry 3 --progress-bar -o "$dest.part" "$url" \
    || { echo "   download failed: ${url}" >&2; return 1; }
  mv "$dest.part" "$dest"
  [ "$(sha256_of "$dest")" = "$want" ] \
    || { echo "   $(basename "$dest") does not have the recorded SHA-256" >&2; return 1; }
}

# snarkjs colours its log lines; the transcript comparison wants plain text.
strip_ansi() { sed $'s/\x1b\\[[0-9;]*m//g'; }

verify_circuit() {
  local name="$1" c base_url ptau_file r1cs zkey ptau log
  c="$(jq -c --arg n "$name" '.circuits[] | select(.name == $n)' "$MANIFEST")"
  base_url="$(jq -r --arg r "$(jq -r '.ceremony' <<<"$c")" '.ceremonies[$r].assetsBaseUrl' "$MANIFEST")"
  ptau_file="$(jq -r '.phase1' <<<"$c")"
  r1cs="${CACHE}/$(jq -r '.r1cs.file' <<<"$c")"
  zkey="${CACHE}/$(jq -r '.finalZkey.file' <<<"$c")"
  ptau="${CACHE}/${ptau_file}"

  fetch "${base_url}/$(basename "$r1cs")" "$r1cs" "$(jq -r '.r1cs.sha256' <<<"$c")" || return 1
  fetch "${base_url}/$(basename "$zkey")" "$zkey" "$(jq -r '.finalZkey.sha256' <<<"$c")" || return 1
  fetch "$(jq -r --arg f "$ptau_file" '.phase1[$f].url' "$MANIFEST")" "$ptau" \
    "$(jq -r --arg f "$ptau_file" '.phase1[$f].sha256' "$MANIFEST")" || return 1
  echo "   r1cs, final zkey and ${ptau_file} have the recorded SHA-256"

  log="${WORK}/${name}.log"
  if ! "${SNARKJS_CMD[@]}" zkey verify "$r1cs" "$ptau" "$zkey" 2>&1 | strip_ansi > "$log"; then
    echo "   snarkjs zkey verify failed, see ${log}" >&2; return 1
  fi
  grep -q 'ZKey Ok!' "$log" \
    || { echo "   snarkjs zkey verify did not report 'ZKey Ok!', see ${log}" >&2; return 1; }
  echo "   snarkjs zkey verify: ZKey Ok!"

  # snarkjs prints a hash as four lines of four words under a heading line.
  # Bring its output and the manifest to the same shape: "circuit <hash>",
  # then "<order> <name> <hash>" per contribution.
  awk '
    /Circuit Hash:/ { label = "circuit"; left = 4; hash = ""; next }
    match($0, /contribution #[0-9]+ .*:$/) { label = substr($0, RSTART + 14, RLENGTH - 15); left = 4; hash = ""; next }
    left > 0 { gsub(/[ \t]/, ""); hash = hash $0; if (--left == 0) print label, hash }
  ' "$log" > "${WORK}/${name}.printed"
  { grep '^circuit ' "${WORK}/${name}.printed"; grep -v '^circuit ' "${WORK}/${name}.printed" | sort -n; } \
    > "${WORK}/${name}.got"
  jq -r '"circuit \(.circuitHash)", (.contributions[] | "\(.order) \(.name) \(.contributionHash)")' <<<"$c" \
    > "${WORK}/${name}.want"
  if ! diff "${WORK}/${name}.want" "${WORK}/${name}.got" >&2; then
    echo "   transcript differs from circuits.json (< recorded, > in the zkey)" >&2; return 1
  fi
  echo "   circuit hash and $(jq '.contributions | length' <<<"$c") contributions match the transcript"

  "${SNARKJS_CMD[@]}" zkey export verificationkey "$zkey" "${WORK}/${name}-verification_key.json" >/dev/null 2>&1 \
    || { echo "   could not export the verification key" >&2; return 1; }
  jq -S . "${WORK}/${name}-verification_key.json" > "${WORK}/${name}-vkey.got"
  jq -S . "${ROOT}/circuits/${name}/verification_key.json" > "${WORK}/${name}-vkey.want"
  cmp -s "${WORK}/${name}-vkey.want" "${WORK}/${name}-vkey.got" \
    || { echo "   circuits/${name}/verification_key.json is not the key of the final zkey" >&2; return 1; }

  "${SNARKJS_CMD[@]}" zkey export solidityverifier "$zkey" "${WORK}/${name}-verifier.sol" >/dev/null 2>&1 \
    || { echo "   could not export the Solidity verifier" >&2; return 1; }
  cmp -s "${ROOT}/circuits/${name}/verifier.sol" "${WORK}/${name}-verifier.sol" \
    || { echo "   circuits/${name}/verifier.sol is not the verifier of the final zkey" >&2; return 1; }
  echo "   verification key and Solidity verifier match the final zkey"
}

checked=0
failed=""
# The list is read on fd 3 so nothing in the loop body can swallow it.
while IFS= read -r name <&3; do
  if [ -n "${ONLY}" ] && ! printf ',%s,' "${ONLY}" | grep -qF ",${name},"; then continue; fi
  echo ">> ${name}"
  checked=$((checked + 1))
  if verify_circuit "$name"; then echo "   OK"; else echo "   FAILED" >&2; failed="${failed} ${name}"; fi
done 3< <(jq -r '.circuits[].name' "$MANIFEST")

[ ${checked} -gt 0 ] || { echo "No circuit matched --only ${ONLY}" >&2; exit 2; }
if [ -n "${failed}" ]; then echo ">> FAILED:${failed}" >&2; exit 1; fi
echo ">> ${checked} circuit(s) verified"
