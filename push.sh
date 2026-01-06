#!/bin/bash
# ============= PUSH CONTRIBUTION BY POLOSS =============

TOTAL=108
FILE="contri.log"

touch $FILE

for ((i=1;i<=TOTAL;i++)); do
  DATE=$(date -d "$i days ago" +"%Y-%m-%dT10:00:00")

  echo "commit $i BY POLOSS" >> $FILE

  git add $FILE
  GIT_AUTHOR_DATE="$DATE" \
  GIT_COMMITTER_DATE="$DATE" \
  git commit -m "update $i BY POLOSS"
done

git push origin main
