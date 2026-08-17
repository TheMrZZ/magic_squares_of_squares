#!/bin/zsh
# Emit Lean certificate files for every dump and compile them.
# Usage: ./emit_all.sh   (run from research/scripts/rs)
set -e
LEAN=../../lean
for f in oracle_t0_*.txt cross_forms_*.txt; do
  [ -f "$f" ] || continue
  ./target/release/lean_emit "$f"
done
for f in CertForms_*.lean; do
  cp "$f" "$LEAN/MsqLean/$f"
done
cd "$LEAN"
fail=0
for f in MsqLean/CertForms_*.lean; do
  echo "== $f"
  if ! ~/.elan/bin/lake env lean "$f" > /tmp/certcompile.log 2>&1; then
    echo "   ERRORS:"; grep -m3 error /tmp/certcompile.log
    fail=1
  else
    echo "   ok ($(grep -c '^lemma' "$f") lemmas)"
  fi
done
exit $fail
