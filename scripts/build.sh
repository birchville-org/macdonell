#!/usr/bin/env bash
# Build script for Arthur Anthony Macdonell: A Vedic Grammar for Students (1916)
# Compiles 1:1 digital Typst edition and injects hierarchical bookmarks & page labels.

set -euo pipefail

export PATH="/opt/homebrew/bin:$PATH"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

TYPST_SRC="${PROJECT_ROOT}/typst/macdonell.typ"
PDF_OUT="${PROJECT_ROOT}/dist/Macdonell_1916_Vedic_Grammar_Digital_Edition.pdf"
TOC_TXT="${PROJECT_ROOT}/data/macdonell_1916.toc.txt"
INJECT_TOC="${SCRIPT_DIR}/inject_toc.py"

echo "=== Building Macdonell (1916) Digital Edition ==="
echo "Source: ${TYPST_SRC}"
echo "Target: ${PDF_OUT}"

# 1. Compile with Typst
TYPST_BIN="$(which typst || echo "/opt/homebrew/bin/typst")"
if [[ ! -x "$TYPST_BIN" ]]; then
  echo "Error: typst not found in PATH or /opt/homebrew/bin/typst" >&2
  exit 1
fi

echo "Compiling with Typst..."
"$TYPST_BIN" compile --root "$PROJECT_ROOT" "$TYPST_SRC" "$PDF_OUT"
echo "Typst compilation complete."

# 2. Inject TOC Outline and Page Labels (i–xii, 1–508)
if [[ -f "$TOC_TXT" && -f "$INJECT_TOC" ]]; then
  echo "Injecting TOC outline and page labels from ${TOC_TXT}..."
  if which uv >/dev/null 2>&1; then
    uv run --with pymupdf python "$INJECT_TOC" -i "$PDF_OUT" -t "$TOC_TXT"
  else
    python3 "$INJECT_TOC" -i "$PDF_OUT" -t "$TOC_TXT"
  fi
  echo "TOC outline injection complete."
fi

echo "=== Build finished successfully: ${PDF_OUT} ==="
