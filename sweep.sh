#!/bin/zsh
cd "$(dirname "$0")"
for start in 10 20 30 40 50 60 70 80 90; do
  end=$((start+10))
  echo "===== CHUNK ${start}M..${end}M ====="
  ./target/release/magic_squared_squares test_n ${start}_000_000 ${end}_000_000 2>&1
  echo "===== chunk ${start}M done, exit=$? ====="
done
echo "SWEEP COMPLETE"
