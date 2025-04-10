#!/bin/bash
# Copyright (C) 2025 VD_Priv8 (VD171)
# This code is licensed under GNU AGPLv3 (https://www.gnu.org/licenses/agpl-3.0.html).
# See the LICENSE file for details.

if [ $# -ne 4 ]; then
    echo "Usage: sh $0 <initial_seed> <final_seed> <participants> <expected_hash>"
    exit 1
fi

initial_seed="$1"
final_seed="$2"
participants="$3"
expected_hash=$(echo "$4" | tr 'A-F' 'a-f')

combined="${initial_seed}|${participants}|${final_seed}"
calculated_hash=$(printf "%s" "$combined" | sha256sum | awk '{print $1}' | tr 'A-F' 'a-f')

if [ "$calculated_hash" != "$expected_hash" ]; then
    echo "❌ Hash verification failed."
    exit 1
fi

hash_hex=${calculated_hash^^}
hash_decimal=0
for ((i=0; i<${#hash_hex}; i++)); do
    digit=${hash_hex:$i:1}
    if [[ $digit =~ [0-9] ]]; then
        val=$((16#$digit))
    else
        val=$((16#$digit))
    fi
    hash_decimal=$(( (hash_decimal * 16 + val) % participants ))
done
draw_result=$(( hash_decimal + 1 ))

echo "Initial Seed:     $initial_seed"
echo "Final Seed:       $final_seed"
echo "Participants:     $participants"
echo "Expected Hash:    $expected_hash"
echo "Calculated Hash:  $calculated_hash"
echo
echo "🎯 DRAW RESULT:   $draw_result"
echo "=============================="