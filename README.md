# Curvy Groth16 trusted setup (Phase 2)

This repository holds the results and the transcripts of the circuit-specific (Phase 2) trusted
setups for 21 Curvy Groth16 circuits, run as two ceremonies, and a script that checks all of it
from public inputs.

- **Proof system:** Groth16 over BN254 (`bn128`), set up with [snarkjs](https://github.com/iden3/snarkjs) 0.7.6.
- **Phase 1:** [Perpetual Powers of Tau](https://github.com/privacy-ethereum/perpetualpowersoftau), contribution 0080, in the per-degree files PSE publishes ready for Phase 2.
- **Phase 2, ceremony v1:** 10 circuits. 6 participants contributed to every circuit, one after another, on 2026-09-29 between 09:04 and 10:25 UTC.
- **Phase 2, ceremony v2:** 11 circuits. 8 participants contributed to 9 of them and 7 to the other 2, one after another, on 2026-10-27 between 10:05 and 10:23 UTC.

The keys of a circuit are safe to use as long as at least one of its contributors discarded the
randomness they used.

## Circuits

### Ceremony v1

| Circuit | Constraints | Phase 1 file | `.r1cs` | Final zkey | In this repo |
| :-- | --: | :-- | --: | --: | :-- |
| `verifySingleWithdrawal_2_30` | 21,498 | `ppot_0080_15.ptau` | 9.3 MB | 13.3 MB | [key](circuits/verifySingleWithdrawal_2_30/verification_key.json) · [verifier](circuits/verifySingleWithdrawal_2_30/verifier.sol) · [transcript](circuits/verifySingleWithdrawal_2_30/transcript.md) |
| `verifySingleAggregation_2_3_30` | 27,412 | `ppot_0080_15.ptau` | 11.7 MB | 16.5 MB | [key](circuits/verifySingleAggregation_2_3_30/verification_key.json) · [verifier](circuits/verifySingleAggregation_2_3_30/verifier.sol) · [transcript](circuits/verifySingleAggregation_2_3_30/transcript.md) |
| `verifyPixAggregation_2_7_30` | 51,249 | `ppot_0080_16.ptau` | 19.0 MB | 31.7 MB | [key](circuits/verifyPixAggregation_2_7_30/verification_key.json) · [verifier](circuits/verifyPixAggregation_2_7_30/verifier.sol) · [transcript](circuits/verifyPixAggregation_2_7_30/transcript.md) |
| `verifyPixAggregation_2_9_30` | 57,163 | `ppot_0080_16.ptau` | 21.1 MB | 35.1 MB | [key](circuits/verifyPixAggregation_2_9_30/verification_key.json) · [verifier](circuits/verifyPixAggregation_2_9_30/verifier.sol) · [transcript](circuits/verifyPixAggregation_2_9_30/transcript.md) |
| `verifyPixMultiOwnerWithdrawal_5_30` | 81,541 | `ppot_0080_17.ptau` | 29.1 MB | 48.8 MB | [key](circuits/verifyPixMultiOwnerWithdrawal_5_30/verification_key.json) · [verifier](circuits/verifyPixMultiOwnerWithdrawal_5_30/verifier.sol) · [transcript](circuits/verifyPixMultiOwnerWithdrawal_5_30/transcript.md) |
| `verifyPixMultiOwnerWithdrawal_10_30` | 162,536 | `ppot_0080_18.ptau` | 57.9 MB | 97.2 MB | [key](circuits/verifyPixMultiOwnerWithdrawal_10_30/verification_key.json) · [verifier](circuits/verifyPixMultiOwnerWithdrawal_10_30/verifier.sol) · [transcript](circuits/verifyPixMultiOwnerWithdrawal_10_30/transcript.md) |
| `verifyPendingNotesCommitment_5_30` | 226,236 | `ppot_0080_18.ptau` | 72.5 MB | 129.2 MB | [key](circuits/verifyPendingNotesCommitment_5_30/verification_key.json) · [verifier](circuits/verifyPendingNotesCommitment_5_30/verifier.sol) · [transcript](circuits/verifyPendingNotesCommitment_5_30/transcript.md) |
| `verifyPendingNotesCommitment_10_30` | 391,313 | `ppot_0080_19.ptau` | 129.9 MB | 227.9 MB | [key](circuits/verifyPendingNotesCommitment_10_30/verification_key.json) · [verifier](circuits/verifyPendingNotesCommitment_10_30/verifier.sol) · [transcript](circuits/verifyPendingNotesCommitment_10_30/transcript.md) |
| `verifyPendingNotesCommitment_20_30` | 691,993 | `ppot_0080_20.ptau` | 237.2 MB | 410.7 MB | [key](circuits/verifyPendingNotesCommitment_20_30/verification_key.json) · [verifier](circuits/verifyPendingNotesCommitment_20_30/verifier.sol) · [transcript](circuits/verifyPendingNotesCommitment_20_30/transcript.md) |
| `verifyPendingNotesCommitment_50_30` | 1,594,033 | `ppot_0080_21.ptau` | 559.4 MB | 925.4 MB | [key](circuits/verifyPendingNotesCommitment_50_30/verification_key.json) · [verifier](circuits/verifyPendingNotesCommitment_50_30/verifier.sol) · [transcript](circuits/verifyPendingNotesCommitment_50_30/transcript.md) |

### Ceremony v2

| Circuit | Constraints | Phase 1 file | `.r1cs` | Final zkey | In this repo |
| :-- | --: | :-- | --: | --: | :-- |
| `verifySingleWithdrawalBound_2_30` | 25,184 | `ppot_0080_15.ptau` | 10.5 MB | 15.4 MB | [key](circuits/verifySingleWithdrawalBound_2_30/verification_key.json) · [verifier](circuits/verifySingleWithdrawalBound_2_30/verifier.sol) · [transcript](circuits/verifySingleWithdrawalBound_2_30/transcript.md) |
| `verifySingleAggregationBound_2_3_30` | 32,453 | `ppot_0080_15.ptau` | 14.6 MB | 20.5 MB | [key](circuits/verifySingleAggregationBound_2_3_30/verification_key.json) · [verifier](circuits/verifySingleAggregationBound_2_3_30/verifier.sol) · [transcript](circuits/verifySingleAggregationBound_2_3_30/transcript.md) |
| `verifySingleWithdrawalBound_5_30` | 50,018 | `ppot_0080_16.ptau` | 22.2 MB | 30.0 MB | [key](circuits/verifySingleWithdrawalBound_5_30/verification_key.json) · [verifier](circuits/verifySingleWithdrawalBound_5_30/verifier.sol) · [transcript](circuits/verifySingleWithdrawalBound_5_30/transcript.md) |
| `verifyPixAggregationBound_2_7_30` | 53,996 | `ppot_0080_16.ptau` | 22.4 MB | 35.5 MB | [key](circuits/verifyPixAggregationBound_2_7_30/verification_key.json) · [verifier](circuits/verifyPixAggregationBound_2_7_30/verifier.sol) · [transcript](circuits/verifyPixAggregationBound_2_7_30/transcript.md) |
| `verifySingleAggregationBound_5_3_30` | 57,203 | `ppot_0080_16.ptau` | 26.2 MB | 34.9 MB | [key](circuits/verifySingleAggregationBound_5_3_30/verification_key.json) · [verifier](circuits/verifySingleAggregationBound_5_3_30/verifier.sol) · [transcript](circuits/verifySingleAggregationBound_5_3_30/transcript.md) |
| `verifyPixAggregationBound_2_9_30` | 60,868 | `ppot_0080_16.ptau` | 25.3 MB | 40.0 MB | [key](circuits/verifyPixAggregationBound_2_9_30/verification_key.json) · [verifier](circuits/verifyPixAggregationBound_2_9_30/verifier.sol) · [transcript](circuits/verifyPixAggregationBound_2_9_30/transcript.md) |
| `verifyPixMultiOwnerWithdrawalBound_5_30` | 81,305 | `ppot_0080_17.ptau` | 29.6 MB | 49.3 MB | [key](circuits/verifyPixMultiOwnerWithdrawalBound_5_30/verification_key.json) · [verifier](circuits/verifyPixMultiOwnerWithdrawalBound_5_30/verifier.sol) · [transcript](circuits/verifyPixMultiOwnerWithdrawalBound_5_30/transcript.md) |
| `verifySingleWithdrawalBound_10_30` | 91,494 | `ppot_0080_17.ptau` | 41.8 MB | 55.1 MB | [key](circuits/verifySingleWithdrawalBound_10_30/verification_key.json) · [verifier](circuits/verifySingleWithdrawalBound_10_30/verifier.sol) · [transcript](circuits/verifySingleWithdrawalBound_10_30/transcript.md) |
| `verifyPendingNotesCommitmentBound_256_30` | 93,236 | `ppot_0080_17.ptau` | 50.8 MB | 65.4 MB | [key](circuits/verifyPendingNotesCommitmentBound_256_30/verification_key.json) · [verifier](circuits/verifyPendingNotesCommitmentBound_256_30/verifier.sol) · [transcript](circuits/verifyPendingNotesCommitmentBound_256_30/transcript.md) |
| `verifySingleAggregationBound_10_3_30` | 98,533 | `ppot_0080_17.ptau` | 45.5 MB | 59.8 MB | [key](circuits/verifySingleAggregationBound_10_3_30/verification_key.json) · [verifier](circuits/verifySingleAggregationBound_10_3_30/verifier.sol) · [transcript](circuits/verifySingleAggregationBound_10_3_30/transcript.md) |
| `verifyPixMultiOwnerWithdrawalBound_10_30` | 161,840 | `ppot_0080_18.ptau` | 58.3 MB | 97.3 MB | [key](circuits/verifyPixMultiOwnerWithdrawalBound_10_30/verification_key.json) · [verifier](circuits/verifyPixMultiOwnerWithdrawalBound_10_30/verifier.sol) · [transcript](circuits/verifyPixMultiOwnerWithdrawalBound_10_30/transcript.md) |

The `.r1cs` and final zkey of each circuit are assets of its ceremony's release,
[`v1`](https://github.com/0xCurvy/zk-trusted-ceremony/releases/tag/v1) or
[`v2`](https://github.com/0xCurvy/zk-trusted-ceremony/releases/tag/v2), named `<circuit>.r1cs` and `<circuit>_final.zkey`.
Their SHA-256 hashes are in [`SHA256SUMS`](SHA256SUMS) and in [`circuits.json`](circuits.json).

## Contributions

Each circuit's `transcript.md` lists its contributions in order: participant (and the name their
client wrote into the zkey, where it differs), time, contribution hash and the SHA-256 of the zkey
they uploaded. [`circuits.json`](circuits.json) holds the same data.

## Phase 1 files

| File | Power | Size | SHA-256 |
| :-- | --: | --: | :-- |
| [`ppot_0080_15.ptau`](https://pse-trusted-setup-ppot.s3.eu-central-1.amazonaws.com/pot28_0080/ppot_0080_15.ptau) | 15 | 37.8 MB | `4a8eb5a754ed4710d6ad603c2e1a89c72325a448e4474f8694d2c71c7c272f3d` |
| [`ppot_0080_16.ptau`](https://pse-trusted-setup-ppot.s3.eu-central-1.amazonaws.com/pot28_0080/ppot_0080_16.ptau) | 16 | 75.6 MB | `ed3622a7c79b0b49aadd134ebbc5b77df8c8c59bccebdfd0d9bf2c1a51561cf9` |
| [`ppot_0080_17.ptau`](https://pse-trusted-setup-ppot.s3.eu-central-1.amazonaws.com/pot28_0080/ppot_0080_17.ptau) | 17 | 151.1 MB | `f807e065fde53f72f4bf4d57140fab85b26daa6cc95bdfec7cce93622b3a367c` |
| [`ppot_0080_18.ptau`](https://pse-trusted-setup-ppot.s3.eu-central-1.amazonaws.com/pot28_0080/ppot_0080_18.ptau) | 18 | 302.1 MB | `9693220206afab749e3d88d4ab5fdf5d36120ea102e7e587ccea0e7a5208e711` |
| [`ppot_0080_19.ptau`](https://pse-trusted-setup-ppot.s3.eu-central-1.amazonaws.com/pot28_0080/ppot_0080_19.ptau) | 19 | 604.1 MB | `d0cadfb7d5bad6c5e0b012fb1c4bbaa3cc98fe249988f9f99d1818175e4c2015` |
| [`ppot_0080_20.ptau`](https://pse-trusted-setup-ppot.s3.eu-central-1.amazonaws.com/pot28_0080/ppot_0080_20.ptau) | 20 | 1,208.1 MB | `560412532a1205145d5f21585274fb2cef61273496ddc7186aec855aab01a8cd` |
| [`ppot_0080_21.ptau`](https://pse-trusted-setup-ppot.s3.eu-central-1.amazonaws.com/pot28_0080/ppot_0080_21.ptau) | 21 | 2,416.0 MB | `b4131202088141088d83fc05d654a142b51117df0960568613069e0719e7645a` |

The hashes are of the files as downloaded from the linked URLs on 2026-10-13.

## Deployed verifiers

The verifier contracts of the v1 circuits are deployed on Gnosis (chain id 100):

| Circuit | Verifier contract |
| :-- | :-- |
| `verifySingleWithdrawal_2_30` | [`0xc5d40f6A6e23DfAC7980292211BDdFF3629B26ad`](https://gnosisscan.io/address/0xc5d40f6A6e23DfAC7980292211BDdFF3629B26ad) |
| `verifySingleAggregation_2_3_30` | [`0x3E0A6971e473F1D52Cc8dCFb042B685c157c2cc9`](https://gnosisscan.io/address/0x3E0A6971e473F1D52Cc8dCFb042B685c157c2cc9) |
| `verifyPixAggregation_2_7_30` | [`0x874613A4224025aD7c9350f068fa603724050b7f`](https://gnosisscan.io/address/0x874613A4224025aD7c9350f068fa603724050b7f) |
| `verifyPixAggregation_2_9_30` | [`0x93071817925e94a4DD75a44E972c5107Df2129d6`](https://gnosisscan.io/address/0x93071817925e94a4DD75a44E972c5107Df2129d6) |
| `verifyPixMultiOwnerWithdrawal_5_30` | [`0x7EaE0DBaad53b2885b670499552Aa1AC3dB248CD`](https://gnosisscan.io/address/0x7EaE0DBaad53b2885b670499552Aa1AC3dB248CD) |
| `verifyPixMultiOwnerWithdrawal_10_30` | [`0x4c63d4b47f7034f75529137d158D8fDD713B2653`](https://gnosisscan.io/address/0x4c63d4b47f7034f75529137d158D8fDD713B2653) |
| `verifyPendingNotesCommitment_5_30` | [`0x7e4e6dA8dfCf2460242533A1D2baE261A08DD2Dc`](https://gnosisscan.io/address/0x7e4e6dA8dfCf2460242533A1D2baE261A08DD2Dc) |
| `verifyPendingNotesCommitment_10_30` | [`0xd48Ef81f1C069A9019F8DD959830394903AA38CB`](https://gnosisscan.io/address/0xd48Ef81f1C069A9019F8DD959830394903AA38CB) |
| `verifyPendingNotesCommitment_20_30` | [`0x8a3954b5a499Ca07e1A0A7D3e9fB259B3AbeDe6A`](https://gnosisscan.io/address/0x8a3954b5a499Ca07e1A0A7D3e9fB259B3AbeDe6A) |
| `verifyPendingNotesCommitment_50_30` | [`0x3A218c52344d28ddCa4DDff8e4D6D356Bc3fd460`](https://gnosisscan.io/address/0x3A218c52344d28ddCa4DDff8e4D6D356Bc3fd460) |

`bin/check-deployed.mjs` fetches the code of each contract and checks that it contains every
verification-key constant of the circuit's `verifier.sol`.

## Verifying

Requirements: `curl`, `jq`, Node.js 18 or newer, and about 9 GB of free disk for all circuits.

```bash
git clone https://github.com/0xCurvy/zk-trusted-ceremony.git
cd zk-trusted-ceremony
bin/verify.sh
```

For each circuit the script:

1. downloads the `.r1cs`, the final zkey and the Phase 1 file, and checks each against its recorded SHA-256;
2. runs `snarkjs zkey verify`, which rebuilds the initial zkey from the `.r1cs` and the Phase 1 file and checks every contribution in the chain;
3. compares the circuit hash and every contribution name and hash snarkjs prints with `circuits.json`;
4. re-exports the verification key and the Solidity verifier from the final zkey and compares them with the files under `circuits/`.

All circuits take roughly 20 minutes on a recent laptop, not counting downloads. To check one circuit:

```bash
bin/verify.sh --only verifySingleWithdrawal_2_30
```

To check one ceremony:

```bash
bin/verify.sh --only "$(jq -r '[.circuits[] | select(.ceremony == "v2") | .name] | join(",")' circuits.json)"
```

The same by hand, for one circuit:

```bash
snarkjs zkey verify <circuit>.r1cs <phase 1 file> <circuit>_final.zkey
snarkjs zkey export verificationkey <circuit>_final.zkey verification_key.json
snarkjs zkey export solidityverifier <circuit>_final.zkey verifier.sol
```

To check the deployed contracts against the keys in this repository (no downloads, needs only Node.js):

```bash
node bin/check-deployed.mjs
```

## Layout

```text
README.md
circuits.json          ceremonies, circuits, contributions and file hashes, read by bin/verify.sh
SHA256SUMS             hashes of the release assets
bin/verify.sh          checks the ceremony from the r1cs, Phase 1 file and final zkey
bin/check-deployed.mjs checks the deployed verifier contracts against circuits/
circuits/<circuit>/
    verification_key.json
    verifier.sol
    transcript.md      the circuit's contributions
```
