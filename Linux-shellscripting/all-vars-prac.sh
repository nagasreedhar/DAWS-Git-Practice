#!/bin/bash
set -euo pipefail
###############################################################################
# VARIABLES PRACTICE SCRIPT
#
# Purpose:
# Learn every major Bash variable type in one script.
# Concepts covered:
# 1. Positional Parameters
# 2. Special Variables
# 3. Environment Variables
# 4. User Input (read)
# 5. Readonly Variables
# 6. String Variables
# 7. String Manipulation
# 8. Arithmetic Variables
# 9. Arrays
# 10. Process Related Variables
# 11. RANDOM / REPLY / SECONDS
# 12. Command Substitution
# 13. Variable Expansion Tricks
# 14. IFS
#
# This script can later be extended with:
# - Loops
# - Functions
# - Conditions
# - File Operations
# - AWS Automation
###############################################################################


###############################################################################
# SECTION 1 - POSITIONAL PARAMETERS
###############################################################################

ARG1="$1"
ARG2="$2"
ARG3="$3"
ARG4="$4"

echo "================ POSITIONAL PARAMETERS ================"

echo "Script Name (- \$0)        : $0"
echo "Argument 1 (- \$1)         : $ARG1" #use \ to print the special charecter in echo or also '' ex: /$$ , \$\$,
echo "Argument 2 (- \$2)         : $ARG2"
echo "Argument 3 (- \$3)         : $ARG3"
echo "Argument 4 (- \$4)         : $ARG4"

echo "Total Arguments (- \$#)    : $#"
echo "All Arguments (- \$@)      : $@"
echo "All Arguments (- \$*)      : $*"


###############################################################################
# SECTION 2 - SPECIAL VARIABLES
###############################################################################

echo
echo "================ SPECIAL VARIABLES ================"

echo "Current Script PID (- \$\$) : $$"

echo "Exit status before command  : $?"

ls > /dev/null

echo "Exit status after ls (- \$?) : $?"

echo "Current Shell Flags (- \$-) : $-"


###############################################################################
# SECTION 3 - ENVIRONMENT VARIABLES
###############################################################################

echo
echo "================ ENVIRONMENT VARIABLES ================"

echo "Current User      : $USER"
echo "Home Directory    : $HOME"
echo "Current Directory : $PWD"
echo "Shell             : $SHELL"
echo "Hostname          : $HOSTNAME"
echo "PATH Variable     : $PATH"


###############################################################################
# SECTION 4 - READ VARIABLE
###############################################################################

echo
echo "================ READ VARIABLE ================"

read -p "Enter your name: " username

echo "Hello $username"

read -p "Enter your age: " age

echo "Age Entered : $age"


###############################################################################
# SECTION 5 - REPLY VARIABLE
###############################################################################

echo
echo "================ REPLY VARIABLE ================"

echo "Enter anything:"
read

echo "Value stored automatically in REPLY variable : $REPLY"


###############################################################################
# SECTION 6 - READONLY VARIABLE
###############################################################################

echo
echo "================ READONLY VARIABLE ================"

readonly COMPANY="Microsoft"

echo "Company : $COMPANY"

# Uncomment to test failure
#
#COMPANY="Google"


###############################################################################
# SECTION 7 - STRING VARIABLES
###############################################################################

echo
echo "================ STRING VARIABLES ================"

OWNER="Sreedhar"
ROLE="Software"
TEAM="DevOps"

echo "Owner : $OWNER"
echo "Role  : $ROLE"
echo "Team  : $TEAM"


###############################################################################
# SECTION 8 - CONCATENATION
###############################################################################

echo
echo "================ CONCATENATION ================"

FULL_ROLE="${ROLE} Engineer" ## "$()"" is used for command vars. 

echo "Full Role : $FULL_ROLE"


###############################################################################
# SECTION 9 - STRING MANIPULATION
###############################################################################

echo
echo "================ STRING MANIPULATION ================"

SERVICE="amazon web services"

echo "Original String : $SERVICE"

echo "Upper Case      : ${SERVICE^^}"

echo "Lower Case      : ${SERVICE,,}"

echo "Replace Text    : ${SERVICE/amazon/AWS}"

echo "Substring       : ${SERVICE:0:6}" #only print amazon can be changed to 6:4

echo "String Length   : ${#SERVICE}" #Including space in vars


###############################################################################
# SECTION 10 - ARITHMETIC VARIABLES
###############################################################################

echo
echo "================ ARITHMETIC VARIABLES ================"

A=100
B=25

echo "Addition       : $((A+B))" # $((A + B)), $(($A+$B)) , $(($A + $B)) can also be used but legacy " use one standard is the golden rule"
echo "Subtraction    : $((A-B))" 
echo "Multiplication : $((A*B))"
echo "Division       : $((A/B))" #can also be given as echo "Division"       : "$((A/B))"

echo "Multiply By 100 : $((A*100))"


###############################################################################
# SECTION 11 - ARRAYS
###############################################################################

echo
echo "================ ARRAYS ================"

#dont give double quotes outside the varible, the strings should be wrapped in the double quotes, no comma

GROUPS=("developer" "tester" "qa" "devops" "architect")

echo "First Group  : ${GROUPS[0]}"
echo "Last Group   : ${GROUPS[4]}"

echo "All Groups   : ${GROUPS[@]}"

echo "Total Groups : ${#GROUPS[@]}"


###############################################################################
# SECTION 12 - COMMAND SUBSTITUTION
###############################################################################

echo
echo "================ COMMAND SUBSTITUTION ================"

CURRENT_DATE=$(date)

CURRENT_DIR=$(pwd)

echo "Current Date : $CURRENT_DATE"

echo "Current Dir  : $CURRENT_DIR"


###############################################################################
# SECTION 13 - RANDOM VARIABLES
###############################################################################

echo
echo "================ RANDOM VARIABLE ================"

echo "Random Number : $RANDOM"

echo "Random 0-99   : $((RANDOM % 100))"


###############################################################################
# SECTION 14 - PROCESS VARIABLES
###############################################################################

echo
echo "================ PROCESS VARIABLES ================"

echo "PID   (\$$)  : $$"

echo "PPID  : $PPID"

echo "UID   : $UID"

echo "EUID  : $EUID"


###############################################################################
# SECTION 15 - BACKGROUND PROCESS VARIABLE
###############################################################################

echo
echo "================ BACKGROUND PROCESS ================"

sleep 30 &

echo "Background PID (- \$!) : $!"


###############################################################################
# SECTION 16 - LINENO VARIABLE
###############################################################################

echo
echo "================ LINENO VARIABLE ================"

echo "Current Line Number : $LINENO"


###############################################################################
# SECTION 17 - SECONDS VARIABLE
###############################################################################

echo
echo "================ SECONDS VARIABLE ================"

echo "Script Runtime : $SECONDS seconds" #add in start line of the script to cpature total time and keep the same env arible in last line

sleep 2

echo "Runtime After Sleep : $SECONDS seconds"


###############################################################################
# SECTION 18 - IFS VARIABLE
###############################################################################

echo
echo "================ IFS VARIABLE ================"

SERVICES="EC2,S3,RDS,VPC"

IFS=','
read -ra AWS_SERVICES <<< "$SERVICES"

echo "Service 1 : ${AWS_SERVICES[0]}"
echo "Service 2 : ${AWS_SERVICES[1]}"
echo "Service 3 : ${AWS_SERVICES[2]}"
echo "Service 4 : ${AWS_SERVICES[3]}"


###############################################################################
# SECTION 19 - TIMING EXAMPLE
###############################################################################

echo
echo "================ SCRIPT TIME ================"

START_TIME=$(date +%s) #captures in seconds

sleep 2

END_TIME=$(date +%s)

TOTAL_TIME=$((END_TIME - START_TIME)) #arthematic operation 

echo "Execution Time : $TOTAL_TIME seconds"


###############################################################################
# END
###############################################################################

echo
echo "================ END OF SCRIPT ================"