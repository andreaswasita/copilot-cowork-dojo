#!/usr/bin/env bash
#
# install-scout.sh — install the Cowork Dojo skills into Microsoft Scout.
#
# Microsoft Scout is built on the GitHub Copilot engine and auto-discovers
# personal skills from (in order):
#   - ~/.agents/skills        (personal-agents — the default this script uses)
#   - <configDir>/skills      (configDir = $COPILOT_HOME or ~/.copilot)
# Each skill is a folder with a SKILL.md (name + description frontmatter), the
# same format the Cowork Dojo skills already use — so they drop straight in.
#
# Re-running refreshes the copies. Restart Scout afterwards so it re-scans.
#
# Usage:
#   scripts/install-scout.sh                 # install to ~/.agents/skills
#   scripts/install-scout.sh ~/.copilot/skills
#   COWORK_SCOUT_SKILLS=/path scripts/install-scout.sh
#   DRY_RUN=1 scripts/install-scout.sh       # preview only
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "$script_dir/.." && pwd)"
skills_root="$repo_root/skills"

if [ ! -d "$skills_root" ]; then
  echo "skills/ not found at $skills_root — run this from a Cowork Dojo clone." >&2
  exit 1
fi

target="${1:-${COWORK_SCOUT_SKILLS:-$HOME/.agents/skills}}"
dry="${DRY_RUN:-0}"

echo "Cowork Dojo -> Microsoft Scout skill installer"
echo "  Source: $skills_root"
echo "  Target: $target"
echo ""

[ "$dry" = "1" ] || mkdir -p "$target"

installed=0
skipped=0
for dir in "$skills_root"/*/; do
  name="$(basename "$dir")"
  if [ ! -f "$dir/SKILL.md" ]; then
    echo "  skip  $name (no SKILL.md)"
    skipped=$((skipped + 1))
    continue
  fi
  if [ "$dry" = "1" ]; then
    echo "  dry   $name -> $target/$name"
  else
    rm -rf "${target:?}/$name"
    cp -R "$dir" "$target/$name"
    echo "  ok    $name"
  fi
  installed=$((installed + 1))
done

echo ""
echo "Installed $installed skill(s); skipped $skipped."
echo "Restart Microsoft Scout to load the new skills."
