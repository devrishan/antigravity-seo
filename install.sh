#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${HOME}/.gemini/config/plugins/antigravity-seo"

echo "Installing antigravity-seo to ${TARGET_DIR} ..."
mkdir -p "${TARGET_DIR}"

for item in plugin.json README.md LICENSE pyproject.toml requirements.txt agents assets data rules schema scripts skills; do
  if [ -e "${SCRIPT_DIR}/${item}" ]; then
    cp -R "${SCRIPT_DIR}/${item}" "${TARGET_DIR}/"
  fi
done

echo "Done! Restart or open Antigravity Customizations -> Plugins to verify 'Antigravity SEO' is enabled."
