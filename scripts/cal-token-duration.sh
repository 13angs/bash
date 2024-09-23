#!/bin/bash

# Get the current day of the week (0=Sunday, 6=Saturday)
CURRENT_DAY=$(date +%u)

echo "CURRENT DAY: ${CURRENT_DAY}"

# Determine the remaining workdays (Monday=1, Friday=5)
if [ "$CURRENT_DAY" -ge 1 ] && [ "$CURRENT_DAY" -le 5 ]; then
    REMAINING_DAYS=$((5 - CURRENT_DAY + 1))
else
    REMAINING_DAYS=0  # If it's weekend, no token is generated.
fi

# Calculate token duration in hours (remaining days * 24 hours)
TOKEN_DURATION=$((REMAINING_DAYS * 24))

if [ "$TOKEN_DURATION" -eq 0 ]; then
    echo "No valid token can be generated on weekends."
    exit 1
fi

echo "TOKEN_DURATION=${TOKEN_DURATION}" >> env.txt