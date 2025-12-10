#!/usr/bin/env bash

COURSE="$1"
FILE="$2"

DATE=$(date +"%Y-%m-%d")
TITLE=$(echo "$FILE" | sed 's/_/ /g' | sed 's/^[0-9]* //')

TARGET="${COURSE}/${FILE}.md"

mkdir -p "$COURSE"

sed \
    -e "s/{{TITLE}}/$TITLE/" \
    -e "s/{{COURSE}}/$COURSE/" \
    -e "s/{{DATE}}/$DATE/" \
    -e "s/{{TOPIC}}/$TITLE/" \
    _templates/note_template.md > "$TARGET"

echo "Created $TARGET"
