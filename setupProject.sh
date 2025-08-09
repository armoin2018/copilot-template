#!/bin/bash
# 2024.06.09-001

# Usage: ./setupProject.sh <project_name>
set -e

if [ -z "$1" ]; then
    echo "Usage: $0 <project_name>"
    exit 1
fi

PROJECT_NAME="$1"
BASE_DIR="$(dirname "$PWD")"
TARGET_DIR="$BASE_DIR/$PROJECT_NAME"

# Create project folder if it doesn't exist
if [ ! -d "$TARGET_DIR" ]; then
    mkdir "$TARGET_DIR"
    echo "Created directory: $TARGET_DIR"
fi

# Copy .github folder
if [ -d ".github" ]; then
    cp -r ".github" "$TARGET_DIR/"
    echo "Copied .github folder."
else
    echo "Warning: .github folder not found."
fi

# Create wiki folder
mkdir -p "$TARGET_DIR/wiki"
echo "Created wiki folder."

# Copy BLACKLIST.md and WHITELIST.md
for f in BLACKLIST.md WHITELIST.md; do
    if [ -f "$f" ]; then
        cp "$f" "$TARGET_DIR/"
        echo "Copied $f."
    else
        echo "Warning: $f not found."
    fi
done

# Create markdown files if they don't exist
for f in PLAN.md REQUIREMENTS.md CHANGELOG.md PROMPTS.md; do
    FILE_PATH="$TARGET_DIR/$f"
    if [ ! -f "$FILE_PATH" ]; then
        touch "$FILE_PATH"
        echo "Created $f."
    fi
done

echo "Project setup complete: $PROJECT_NAME"