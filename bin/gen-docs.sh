#!/bin/bash

CONTRACTS='Debuggable DebugCounter'

cp README.template.md README.md

# some bash magic to extract TOC
mkdir -p /tmp/debug-solidity
for c in $CONTRACTS; do
  solmd contracts/$c.sol --dest /tmp/debug-solidity/$c.md
  TOC_LINES=`cat /tmp/debug-solidity/$c.md | grep '^\s*\*' | wc -l | tr -d '[:space:]'`
  cat /tmp/debug-solidity/$c.md | head -n "$TOC_LINES" >> README.md
  cat /tmp/debug-solidity/$c.md | tail -n "+$TOC_LINES" >> /tmp/debug-solidity/ref.md
  echo >> /tmp/debug-solidity/ref.md
done
cat /tmp/debug-solidity/ref.md >> README.md
