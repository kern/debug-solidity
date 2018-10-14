#!/bin/bash

CONTRACTS=(Debuggable DebugCounter)

cp README.template.md README.md

mkdir -p /tmp/debug-solidity
for c in $CONTRACTS; do
  solmd contracts/$c.sol --dest /tmp/debug-solidity/$c.md
  cat /tmp/debug-solidity/$c.md >> README.md
done
