#!/usr/bin/env bash
set -e

# Study session sync helper
# Usage: ./sync.sh [optional commit message]

MSG="${1:-Study session: $(date '+%Y-%m-%d %H:%M')}"

echo "🔄 Staging changes..."
git add .

if git diff-index --quiet HEAD --; then
    echo "ℹ️ No new changes to commit."
else
    echo "📝 Committing: $MSG"
    git commit -m "$MSG"
fi

echo "🚀 Pushing to GitHub..."
git push origin main

echo "🟢 All done! Green dot secured."
