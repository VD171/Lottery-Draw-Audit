# Copyright (C) 2025 VD_Priv8 (VD171)
# This code is licensed under GNU AGPLv3 (https://www.gnu.org/licenses/agpl-3.0.html).
# See the LICENSE file for details.

import hashlib, sys

if len(sys.argv) != 5:
    sys.exit(f"Usage: python {sys.argv[0]} <initial_seed> <final_seed> <participants> <expected_hash>")

initial_seed, final_seed, participants, expected_hash = sys.argv[1], sys.argv[2], int(sys.argv[3]), sys.argv[4].lower()

combined = f"{initial_seed}|{participants}|{final_seed}"
calculated_hash = hashlib.sha256(combined.encode()).hexdigest()

if calculated_hash != expected_hash:
    sys.exit("❌ Hash verification failed.")

draw_result = int(calculated_hash, 16) % participants + 1

print(f"Initial Seed:     {initial_seed}")
print(f"Final Seed:       {final_seed}")
print(f"Participants:     {participants}")
print(f"Final Hash:       {calculated_hash}")
print("======================")
print(f"🎯 DRAW RESULT:   {draw_result}")
print("======================")
