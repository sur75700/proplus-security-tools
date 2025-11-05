#!/usr/bin/env bash
# pscan.sh — պարզ nmap wrapper, պահում է արդյունքները ~/Projects/ProPlus/security_tools/scans
# Օգտագործում: ./pscan.sh <target> (սպ example: 10.10.10.10 կամ example.com)

set -euo pipefail

if [ -z "${1:-}" ]; then
  echo "Usage: pscan.sh <target>  e.g. ./pscan.sh 10.10.10.10"
  exit 1
fi

TARGET="$1"
OUTDIR="$HOME/Projects/ProPlus/security_tools/scans"
mkdir -p "$OUTDIR"

TS="$(date +%Y%m%d_%H%M%S)"
BASENAME="scan_${TARGET//[^a-zA-Z0-9._-]/_}_$TS"

echo "[*] Running fast nmap on: $TARGET"
nmap -sC -sV -oA "$OUTDIR/$BASENAME" "$TARGET"

echo "[*] Done. Results saved as:"
ls -1 "$OUTDIR/$BASENAME."*
