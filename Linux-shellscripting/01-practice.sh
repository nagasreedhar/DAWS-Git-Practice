#!/bin/bash

# 1. Print a welcome message
echo "=== System Status Script ==="

# 2. Use a variable to prompt and read user input
echo "Please enter your name:"
read user_name
echo "Hello, $user_name! Here is your quick system overview:"
echo "--------------------------------------------------"

# 3. Execute basic built-in Linux commands
echo "Current Date and Time:"
date

echo -e "\nYour Current Directory:"
pwd

echo -e "\nScript finished. Have a great day!"
