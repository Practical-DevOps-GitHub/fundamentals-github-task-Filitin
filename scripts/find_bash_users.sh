#!/bin/bash
set -euo pipefail
if command -v getent >/dev/null 2>&1; then
  getent passwd | awk -F: '$7 ~ /\/bin\/bash$/ {printf "%-20s %s\n", $1, $7}'
else
  awk -F: '$7 ~ /\/bin\/bash$/ {printf "%-20s %s\n", $1, $7}' /etc/passwd
fi
