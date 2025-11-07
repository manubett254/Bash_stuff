#!/usr/bin/env bash
# Lesson 2: Variables, input, and simple logic

# 1. A variable
name="Emmanuel"

echo "Hello $name — Lesson 2 is running."

# 2. Read user input
read -rp "What is your favorite number? " num

# 3. Simple logic (if statements)
if [[ $num -gt 10 ]]; then
    echo "That's a big number!"
elif [[ $num -eq 10 ]]; then
    echo "Ah, the number 10 — perfect balance."
else
    echo "That's a small number, but small things can be mighty."
fi

# 4. Command substitution
current_time=$(date +"%H:%M:%S")
echo "Current time is: $current_time"

