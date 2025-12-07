#!/bin/bash
# Testing Different Error Codes

echo "Test 1: Successful command"
whoami
echo "Exit code: $?"
echo ""

echo "Test 2: File not found (ls)"
ls /nonexistent_directory
echo "Exit code: $?"
echo ""

echo "Test 3: Command not found"
this_command_does_not_exist
echo "Exit code: $?"
echo ""

echo "Test 4: Permission denied"
cat /etc/shadow
echo "Exit code: $?"
echo ""

echo "Test 5: Wrong command usage"
cp
echo "Exit code: $?"
