#!/usr/bin/env bash
#
# Phase 1 – Full namespace rename
# From: IsrarMinhas\FilamentAiVisibility
# To:   RoyBiscocho\FilamentAiVisibility
#
# Run from the repository root:
#   bash scripts/rename-namespace.sh
#
# This script updates:
#   - namespace declarations
#   - use statements
#   - string references in docs / config comments (where safe)
#
set -euo pipefail

OLD="IsrarMinhas\\\\FilamentAiVisibility"
NEW="RoyBiscocho\\\\FilamentAiVisibility"

OLD_SINGLE="IsrarMinhas\\FilamentAiVisibility"
NEW_SINGLE="RoyBiscocho\\FilamentAiVisibility"

echo "→ Renaming namespace IsrarMinhas\\FilamentAiVisibility → RoyBiscocho\\FilamentAiVisibility"

# PHP files (src + tests)
find src tests -type f -name "*.php" | while read -r file; do
  if grep -q "IsrarMinhas" "$file" 2>/dev/null; then
    sed -i \
      -e "s/namespace IsrarMinhas\\FilamentAiVisibility/namespace RoyBiscocho\\FilamentAiVisibility/g" \
      -e "s/use IsrarMinhas\\FilamentAiVisibility/use RoyBiscocho\\FilamentAiVisibility/g" \
      -e "s/IsrarMinhas\\\\FilamentAiVisibility/RoyBiscocho\\\\FilamentAiVisibility/g" \
      "$file"
    echo "  updated $file"
  fi
done

# Config, docs, and other text files that may contain the old namespace
for pattern in "config/*.php" "docs/*.md" "README.md" "ROADMAP.md" "tests/Pest.php" "tests/TestCase.php"; do
  for file in $pattern; do
    if [[ -f "$file" ]] && grep -q "IsrarMinhas" "$file" 2>/dev/null; then
      sed -i \
        -e "s/IsrarMinhas\\FilamentAiVisibility/RoyBiscocho\\FilamentAiVisibility/g" \
        -e "s/IsrarMinhas\\\\FilamentAiVisibility/RoyBiscocho\\\\FilamentAiVisibility/g" \
        "$file"
      echo "  updated $file"
    fi
  done
done

echo ""
echo "✓ Namespace rename complete."
echo ""
echo "Next steps:"
echo "  1. composer dump-autoload"
echo "  2. Run the test suite: composer test"
echo "  3. Commit the changes"
echo ""
echo "Note: If you already installed the package in an application, update the"
echo "use statements there as well (or keep a temporary class_alias if needed)."
