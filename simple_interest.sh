#!/usr/bin/env bash
# Simple Interest Calculator: SI = P * R * T
# Usage: ./simple_interest.sh <principal> <rate_percent> <time_years>
# Example: ./simple_interest.sh 10000 7.5 3
set -euo pipefail

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <principal> <rate_percent> <time_years>" >&2
  exit 1
fi

P="$1"
R="$2"
T="$3"

# Use awk for reliable floating-point math
awk -v p="$P" -v r="$R" -v t="$T" 'BEGIN { si = p * (r/100.0) * t; printf "%.2f\n", si }'
