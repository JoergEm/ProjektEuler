#!/bin/bash
# seq 1 999 | awk '($1 % 3 == 0) || ($1 % 5 == 0) {s+=$1} END {print s}'

summe=0

for ((nummer=1; nummer<1000; nummer++)); do
  if (( nummer % 3 == 0 || nummer % 5 == 0 )); then
    ((summe += nummer))
  fi
done

echo "$summe"
