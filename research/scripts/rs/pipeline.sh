#!/bin/zsh
# One coherent certificate pipeline run for one grid: all dumps and all
# generated Lean files come from the same certifier invocation.
set -e
A=$1; B=$2; T="${A}_${B}"
./target/release/certifier $A $B > /tmp/cert_$T.log 2>&1
./target/release/lean_emit oracle_t0_$T.txt
./target/release/chain_emit chains_$T.txt
./target/release/screen_emit screen_$T.txt
cp CertForms_$T.lean ChainCert_$T.lean PairCert_$T.lean ScreenCert_$T.lean ../../lean/MsqLean/
