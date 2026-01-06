#!/usr/bin/env bash
set -e

# ============= PUSH CONTRIBUTION 99 TAHUN LALU BY POLOSS =============

BRANCH="main"
TOTAL=121
FILE="Just_magicc.zig"

# ============= INIT FILE =============
if [ ! -f "$FILE" ]; then
  touch "$FILE"
fi

# ============= LOOP COMMIT =============
for ((i=1;i<=TOTAL;i++)); do
  DATE=$(date -d "99 years ago +$i days" +"%Y-%m-%d %H:%M:%S +0000")

  echo "Just_magicc (BY POLOSS) commit $i" > "$FILE"

  git add -A
  git commit --allow-empty --date="$DATE" -m "update $i BY POLOSS"
done

# ============= FINAL PUSH =============
git branch -M "$BRANCH"
git push -u origin "$BRANCH"
