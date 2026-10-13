#!/usr/bin/env node
// check-deployed.mjs — check that the verifier contracts deployed on chain
// carry the verification keys of this ceremony.
//
// A snarkjs Groth16 verifier holds its verification key as uint256 constants,
// which the Solidity compiler emits as literals in the contract's bytecode.
// For each deployment in circuits.json this fetches the deployed code and
// checks that every key constant of circuits/<circuit>/verifier.sol is in it.
// It does not compare the rest of the bytecode with a build of verifier.sol.
//
//   node bin/check-deployed.mjs                  # RPC endpoints from circuits.json
//   node bin/check-deployed.mjs https://my.node  # or a node you trust (single network)
//
// Needs Node.js 18 or newer and nothing else.
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const root = path.join(path.dirname(fileURLToPath(import.meta.url)), "..");
const manifest = JSON.parse(fs.readFileSync(path.join(root, "circuits.json"), "utf8"));
const rpcOverride = process.argv[2];

async function rpc(url, method, params) {
  const res = await fetch(url, {
    method: "POST",
    headers: { "content-type": "application/json" },
    body: JSON.stringify({ jsonrpc: "2.0", id: 1, method, params }),
  });
  const body = await res.json();
  if (body.error) throw new Error(`${method}: ${body.error.message}`);
  return body.result;
}

// The key constants of a verifier, as the hex the compiler puts in the code:
// a literal's leading zero bytes are dropped (PUSH31 instead of PUSH32).
function keyConstants(circuit) {
  const sol = fs.readFileSync(path.join(root, circuit.verifier.file), "utf8");
  const constants = [];
  for (const [, name, value] of sol.matchAll(/uint256 constant (\w+)\s*=\s*(\d+);/g)) {
    // r and q are the field sizes of the curve, the same in every verifier.
    if (name === "r" || name === "q") continue;
    let hex = BigInt(value).toString(16);
    if (hex.length % 2) hex = `0${hex}`;
    constants.push({ name, hex });
  }
  return constants;
}

let failed = 0;
const chainChecked = new Set();
for (const circuit of manifest.circuits) {
  for (const { network, address } of circuit.deployments) {
    const net = manifest.networks[network];
    const url = rpcOverride ?? net.rpc;
    if (!chainChecked.has(url)) {
      const chainId = Number(await rpc(url, "eth_chainId", []));
      if (chainId !== net.chainId) throw new Error(`${url} is chain ${chainId}, expected ${net.chainId} (${network})`);
      chainChecked.add(url);
    }
    const code = (await rpc(url, "eth_getCode", [address, "latest"])).slice(2).toLowerCase();
    const constants = keyConstants(circuit);
    const missing = constants.filter((c) => !code.includes(c.hex)).map((c) => c.name);
    if (code.length === 0) {
      console.error(`FAILED  ${circuit.name}: no contract at ${address} on ${network}`);
      failed++;
    } else if (constants.length === 0 || missing.length > 0) {
      console.error(`FAILED  ${circuit.name}: ${address} on ${network} lacks ${missing.length} of ${constants.length} key constants (${missing.slice(0, 4).join(", ")})`);
      failed++;
    } else {
      console.log(`OK      ${circuit.name}: ${address} on ${network} contains all ${constants.length} key constants`);
    }
  }
}
if (failed) process.exit(1);
