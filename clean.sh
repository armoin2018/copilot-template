#!/bin/bash
# 2024.06.09-001: Clean script for project planning and documentation files

set -e

# Define files and folders to clean
PLAN_FILE="notes/PLAN.md"
CHANGELOG_FILE="CHANGELOG.md"
REQUIREMENTS_FILE="notes/REQUIREMENTS.md"
WIKI_FOLDER="wiki"

# Empty markdown files (preserve file, remove content)
: > "$PLAN_FILE"
: > "$CHANGELOG_FILE"
: > "$REQUIREMENTS_FILE"

# Remove all files/folders inside wiki, but preserve wiki folder itself
if [ -d "$WIKI_FOLDER" ]; then
    find "$WIKI_FOLDER" -mindepth 1 -exec rm -rf {} +
fi

echo "Clean complete: PLAN.md, CHANGELOG.md, REQUIREMENTS.md emptied and wiki/ cleared."