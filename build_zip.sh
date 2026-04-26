#!/usr/bin/env bash
set -euo pipefail

OUT="Interaction-entity-datapack.zip"
rm -f "$OUT"

# Zip the datapack CONTENTS so pack.mcmeta is at archive root.
zip -r "$OUT" pack.mcmeta data README.md >/dev/null

echo "Built $OUT"
unzip -l "$OUT" | sed -n '1,20p'
