#!/bin/bash

#This script is to practice all the varibles types in one single script
gg="$1"
pp="$2"
ss="$3"
ww="$4"

###The above varibles cover the positional arguments as a aribles and below are the echo prints the special varilebs
##======$@, $#, $* these 3 are related to the passed arguments which shows all args passed to script $@, number of args passed is $#, and $0 
##speial varibles psitional args ($0, $1, $@, $3), Args related vars ($@, $*, $#), PID related ($$, $!), Status code of previous ($?, )
echo "your're running the script which is named as $0 in the path of $(relpath $0)"
echo " number of total args passed for this script is "/$#": $#"
echo "all args passed to this script is "/$@" : $@"
echo "showing all args passed as "/$1 /$2 /$3" are capured by the /$* are $* "
echo "you passed positional parameters "/$1" as $1 "/$2" as $2 and "/$3" as $3"
echo "pid allocated for this script is "\$$": $$ , kill if something not well"
echo current user is \$USER: $USER running the location "/$PWD": $PWD with /$HOSTANME: $HOSTNAME, in the shell of "\$SHELL": $SHELL of "\$HOME": $HOME"

echo '==========================="Varibles, strings with quotes, command substitution, read varible, Arrays, mahermatical varibles"'

OWNER="sreedhar"
AGE="28"
occupation="software"

timein="$(date +%s)"

echo "Hi $OWNER weclocme to the scrpt your "$AGE" , is good and you're working as a ${occupation}enginner"

##readname varible to take input from the user running the script and reusing the input gien by user as varible

read username

echo "we created a new user ${username}-AFG now"

##Array vars, useing multiple in a single varbilbe and printig them with starting from 0 ex: $Groups[0] is developer

Groups=("developer" "tester" "qa" "po" "devops")

echo "you;re belong to the group of: ${Groups[4]}"
echo "you're not belong to either; ${Groups[3]} ${Groups[2]} ${Groups[1]} ${Groups[0]}"
echo "sorry for that you only belong to the ${Groups[4]} but not ${Groups[@]} among the ${#Groups[@]}"

path="$(pwd)"

echo "your current directory is $PATH"


mainuser="$(cat /etc/passwd  | awk -F ":" '$3 > 999 {print $1'} | tail -n1)"
echo "the current user is $mainuser 

echo "Your running in $LINENO"


cmd="mkdir -p /tmp/sree; ls -l /tmp; du -sh"

eval "$cmd"

echo "sttaus code is $?"

sleep 5

echo "sleep status code $!" 

timeout="(date +%sec)"

#to make aehematic operations use "$(($timeout-$timein))"" or $((timeout - timein))

TOTALTIME="$(($timeout-$timein))"

echo "total time taken for running this script is $TOTALTIME and $SECONDS "


echo '---------------------"end of the script"-----------------------'