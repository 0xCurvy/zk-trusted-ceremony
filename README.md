# Curvy Groth16 trusted setup (Phase 2)

This repository holds the results and the transcript of the circuit-specific (Phase 2) trusted
setup for 10 Curvy Groth16 circuits, and a script that checks all of it from public inputs.

- **Proof system:** Groth16 over BN254 (`bn128`), set up with [snarkjs](https://github.com/iden3/snarkjs) 0.7.6.
- **Phase 1:** [Perpetual Powers of Tau](https://github.com/privacy-ethereum/perpetualpowersoftau), contribution 0080, in the per-degree files PSE publishes ready for Phase 2.
- **Phase 2:** 6 participants contributed to every circuit, one after another, on 2026-09-29 between 09:04 and 10:25 UTC.

The keys of a circuit are safe to use as long as at least one of its contributors discarded the
randomness they used.

## Circuits

| Circuit | Constraints | Phase 1 file | `.r1cs` | Final zkey | In this repo |
| :-- | --: | :-- | --: | --: | :-- |
| `verifySingleWithdrawal_2_30` | 21,498 | `ppot_0080_15.ptau` | 9.3 MB | 13.3 MB | [key](circuits/verifySingleWithdrawal_2_30/verification_key.json) · [verifier](circuits/verifySingleWithdrawal_2_30/verifier.sol) |
| `verifySingleAggregation_2_3_30` | 27,412 | `ppot_0080_15.ptau` | 11.7 MB | 16.5 MB | [key](circuits/verifySingleAggregation_2_3_30/verification_key.json) · [verifier](circuits/verifySingleAggregation_2_3_30/verifier.sol) |
| `verifyPixAggregation_2_7_30` | 51,249 | `ppot_0080_16.ptau` | 19.0 MB | 31.7 MB | [key](circuits/verifyPixAggregation_2_7_30/verification_key.json) · [verifier](circuits/verifyPixAggregation_2_7_30/verifier.sol) |
| `verifyPixAggregation_2_9_30` | 57,163 | `ppot_0080_16.ptau` | 21.1 MB | 35.1 MB | [key](circuits/verifyPixAggregation_2_9_30/verification_key.json) · [verifier](circuits/verifyPixAggregation_2_9_30/verifier.sol) |
| `verifyPixMultiOwnerWithdrawal_5_30` | 81,541 | `ppot_0080_17.ptau` | 29.1 MB | 48.8 MB | [key](circuits/verifyPixMultiOwnerWithdrawal_5_30/verification_key.json) · [verifier](circuits/verifyPixMultiOwnerWithdrawal_5_30/verifier.sol) |
| `verifyPixMultiOwnerWithdrawal_10_30` | 162,536 | `ppot_0080_18.ptau` | 57.9 MB | 97.2 MB | [key](circuits/verifyPixMultiOwnerWithdrawal_10_30/verification_key.json) · [verifier](circuits/verifyPixMultiOwnerWithdrawal_10_30/verifier.sol) |
| `verifyPendingNotesCommitment_5_30` | 226,236 | `ppot_0080_18.ptau` | 72.5 MB | 129.2 MB | [key](circuits/verifyPendingNotesCommitment_5_30/verification_key.json) · [verifier](circuits/verifyPendingNotesCommitment_5_30/verifier.sol) |
| `verifyPendingNotesCommitment_10_30` | 391,313 | `ppot_0080_19.ptau` | 129.9 MB | 227.9 MB | [key](circuits/verifyPendingNotesCommitment_10_30/verification_key.json) · [verifier](circuits/verifyPendingNotesCommitment_10_30/verifier.sol) |
| `verifyPendingNotesCommitment_20_30` | 691,993 | `ppot_0080_20.ptau` | 237.2 MB | 410.7 MB | [key](circuits/verifyPendingNotesCommitment_20_30/verification_key.json) · [verifier](circuits/verifyPendingNotesCommitment_20_30/verifier.sol) |
| `verifyPendingNotesCommitment_50_30` | 1,594,033 | `ppot_0080_21.ptau` | 559.4 MB | 925.4 MB | [key](circuits/verifyPendingNotesCommitment_50_30/verification_key.json) · [verifier](circuits/verifyPendingNotesCommitment_50_30/verifier.sol) |

The `.r1cs` and final zkey of each circuit are assets of
[release `v1`](https://github.com/0xCurvy/zk-trusted-ceremony/releases/tag/v1), named `<circuit>.r1cs` and `<circuit>_final.zkey`.
Their SHA-256 hashes are in [`SHA256SUMS`](SHA256SUMS) and in [`circuits.json`](circuits.json).

## Contributions

The order of contributions differs per circuit:

| Circuit | 1 | 2 | 3 | 4 | 5 | 6 |
| :-- | :-- | :-- | :-- | :-- | :-- | :-- |
| `verifySingleWithdrawal_2_30` | Lukas | Tino | Qianchen | Lazar | Mihailo | Vanja |
| `verifySingleAggregation_2_3_30` | Lukas | Tino | Qianchen | Lazar | Mihailo | Vanja |
| `verifyPixAggregation_2_7_30` | Lukas | Qianchen | Tino | Lazar | Mihailo | Vanja |
| `verifyPixAggregation_2_9_30` | Lukas | Tino | Qianchen | Mihailo | Vanja | Lazar |
| `verifyPixMultiOwnerWithdrawal_5_30` | Qianchen | Lukas | Tino | Lazar | Mihailo | Vanja |
| `verifyPixMultiOwnerWithdrawal_10_30` | Lukas | Qianchen | Tino | Lazar | Mihailo | Vanja |
| `verifyPendingNotesCommitment_5_30` | Tino | Lukas | Lazar | Qianchen | Mihailo | Vanja |
| `verifyPendingNotesCommitment_10_30` | Mihailo | Lukas | Lazar | Tino | Qianchen | Vanja |
| `verifyPendingNotesCommitment_20_30` | Lazar | Lukas | Tino | Vanja | Mihailo | Qianchen |
| `verifyPendingNotesCommitment_50_30` | Vanja | Lukas | Lazar | Tino | Mihailo | Qianchen |

[`TRANSCRIPT.md`](TRANSCRIPT.md) lists the hash of every contribution. The name stored inside a
zkey is the one the participant's client wrote, and for some participants it differs from the
name above: `q` for Qianchen.

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

PSE does not publish checksums for these per-degree files. The hashes above are of the files as
downloaded from the linked URLs on 2026-10-13, and are the ones every check in this repository ran against.

## Deployed verifiers

The verifier contracts of these circuits are deployed on Gnosis (chain id 100):

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

Requirements: `curl`, `jq`, Node.js 18 or newer, and about 8 GB of free disk for all circuits.

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

All circuits take roughly 15 minutes on a recent laptop, not counting downloads. To check one circuit:

```bash
bin/verify.sh --only verifySingleWithdrawal_2_30
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
TRANSCRIPT.md          every contribution hash, per circuit
circuits.json          the same data plus all file hashes, read by bin/verify.sh
SHA256SUMS             hashes of the release assets
bin/verify.sh          checks the ceremony from the r1cs, Phase 1 file and final zkey
bin/check-deployed.mjs checks the deployed verifier contracts against circuits/
circuits/<circuit>/
    verification_key.json
    verifier.sol
```
