#!/bin/bash

###############################################################################
# SHELL SCRIPT FUNCTIONS MASTERCLASS
#
# This script demonstrates:
# 1. Basic Functions
# 2. Function Parameters
# 3. Return Status
# 4. Returning Data
# 5. Local vs Global Variables
# 6. Arrays
# 7. Loops Inside Functions
# 8. Input Validation
# 9. Logging Functions
# 10. Error Handling
# 11. Recursion
# 12. Dynamic Function Calls
# 13. Function Dispatch
# 14. Callback Functions
# 15. Trap & Cleanup
# 16. Function Existence Check
# 17. Function Source Display
# 18. Exported Functions
# 19. Main Function Pattern
###############################################################################

echo "===== SHELL FUNCTION MASTERCLASS ====="

###############################################################################
# 1. BASIC FUNCTION
###############################################################################

basic_function() {
    echo "1. Basic Function Executed"
}

basic_function

###############################################################################
# 2. FUNCTION WITH PARAMETERS
###############################################################################

greet() {
    echo "2. Hello, $1"
}

greet "John"

###############################################################################
# 3. MULTIPLE PARAMETERS
###############################################################################

employee_info() {
    echo "3. Name : $1"
    echo "   Age  : $2"
    echo "   Role : $3"
}

employee_info "Alice" 25 "Developer"

###############################################################################
# 4. ALL ARGUMENTS ($@)
###############################################################################

show_all_args() {
    echo "4. All Arguments : $@"
}

show_all_args Linux Bash Python Docker

###############################################################################
# 5. NUMBER OF ARGUMENTS ($#)
###############################################################################

count_args() {
    echo "5. Total Arguments : $#"
}

count_args A B C D E

###############################################################################
# 6. LOOP THROUGH ARGUMENTS
###############################################################################

list_items() {
    echo "6. Listing Arguments"

    for item in "$@"
    do
        echo "   -> $item"
    done
}

list_items Apple Mango Orange

###############################################################################
# 7. RETURN STATUS
#
# Function returns:
# 0 = Success
# Non-zero = Failure
###############################################################################

file_exists() {

    if [ -f "$1" ]
    then
        return 0
    else
        return 1
    fi
}

file_exists "/etc/passwd"

echo "7. Return Status = $?"

###############################################################################
# 8. RETURNING DATA USING ECHO
###############################################################################

current_year() {
    echo "$(date +%Y)"
}

year=$(current_year)

echo "8. Current Year = $year"

###############################################################################
# 9. LOCAL VARIABLE
###############################################################################

name="GLOBAL"

local_demo() {

    local name="LOCAL"

    echo "9. Inside Function = $name"
}

local_demo

echo "   Outside Function = $name"

###############################################################################
# 10. GLOBAL VARIABLE MODIFICATION
###############################################################################

counter=0

increment() {
    ((counter++))
}

increment
increment
increment

echo "10. Counter = $counter"

###############################################################################
# 11. DEFAULT VALUES
###############################################################################

welcome() {

    local user=${1:-Guest}

    echo "11. Welcome $user"
}

welcome
welcome "Mike"

###############################################################################
# 12. ARRAY IN FUNCTIONS
###############################################################################

show_array() {

    local arr=("$@")

    echo "12. Array Contents"

    for element in "${arr[@]}"
    do
        echo "   $element"
    done
}

show_array Red Blue Green

###############################################################################
# 13. INPUT VALIDATION
###############################################################################

divide() {

    if [ "$2" -eq 0 ]
    then
        echo "13. Error: Division by Zero"
        return 1
    fi

    echo "13. Result = $(($1 / $2))"
}

divide 20 4
divide 20 0

###############################################################################
# 14. LOGGING FUNCTION
###############################################################################

log() {
    echo "[INFO] $(date '+%H:%M:%S') - $1"
}

log "Application Started"

###############################################################################
# 15. ERROR FUNCTION
###############################################################################

error_msg() {
    echo "[ERROR] $1"
}

error_msg "Configuration Missing"

###############################################################################
# 16. RECURSION
###############################################################################

factorial() {

    if [ "$1" -le 1 ]
    then
        echo 1
    else

        local prev=$(factorial $(($1-1)))

        echo $(($1 * $prev))
    fi
}

echo "16. Factorial(5) = $(factorial 5)"

###############################################################################
# 17. CALLBACK FUNCTION
###############################################################################

execute() {

    local function_name=$1

    shift

    $function_name "$@"
}

hello() {
    echo "17. Callback Executed



#Section	Concept1	Basic Function
#2-4	Parameters
#5	$# Argument Count
#6	Loop Through Arguments
#7	Return Status Codes
#8	Returning Data
#9	Local Variables
#10	Global Variables
#11	Default Values
#12	Arrays
#13	Validation
#14	Logging
#15	Error Handling
#16	Recursion
#17	Callback Functions
#18	Dynamic Invocation
#19	Function Existence Check
#20	View Function Source
#21	Command Dispatcher
#22	Multiple Return Values
#23	Debugging
#24	Export Functions
#25	Readonly Functions
#26	Trap/Cleanup
#27	Real-world Backup Utility
#28	Production-style main()
#
#This script represents about 90% of the function-related concepts used in real Bash scripting, from beginner level to what you'll encounter in Linux #administration, DevOps, automation, and production shell scripts.   