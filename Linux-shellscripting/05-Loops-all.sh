#!*bin/bash

########################*##################################*# LINUX LOOPS MASTER REFERENCE
#
#*Covers:
# for
# while
# until
# se*ect
# break
# continue
# array loo*s
# file loops
# command loops
# n*sted loops
# infinite loops
#
# Ru*:
# chmod +x linux_loops_master.sh*# ./linux_loops_master.sh
########*##################################*###############

echo "===== FOR L*OP ====="

# Iterate through words*
for item in apple banana mango
do*    echo "$item"
done


echo
echo "===== NUMBER RANGE ====="

# Generate numbers 1 through 5

for num in {1..5}
do
    echo "$num"
done


echo
echo "===== STEP RANGE ====="

# Increment by 2

for num in {0..10..2}
do
    echo "$num"
done


echo
echo "===== C STYLE FOR LOOP ====="

# initialization ; condition ; increment

for (( i=1; i<=5; i++ ))
do
    echo "$i"
done


echo
echo "===== REVERSE LOOP ====="

for (( i=5; i>=1; i-- ))
do
    echo "$i"
done


echo
echo "===== ARRAY LOOP ====="

servers=("web1" "web2" "web3")

for server in "${servers[@]}"
do
    echo "$server"
done


echo
echo "===== ARRAY INDEX LOOP ====="

for index in "${!servers[@]}"
do
    echo "$index -> ${servers[$index]}"
done


echo
echo "===== WHILE LOOP ====="

count=1

while [ $count -le 5 ]
do
    echo "$count"
    ((count++))
done


echo
echo "===== UNTIL LOOP ====="

count=1

until [ $count -gt 5 ]
do
    echo "$count"
    ((count++))
done


echo
echo "===== NESTED LOOP ====="

for i in {1..3}
do
    for j in {1..3}
    do
        echo "$i $j"
    done
done


echo
echo "===== BREAK ====="

for i in {1..10}
do
    if [ $i -eq 5 ]
    then
        break
    fi

    echo "$i"
done


echo
echo "===== CONTINUE ====="

for i in {1..10}
do
    if [ $i -eq 5 ]
    then
        continue
    fi

    echo "$i"
done


echo
echo "===== SCRIPT ARGUMENTS ====="

for arg in "$@"
do
    echo "$arg"
done


echo
echo "===== FILE LOOP ====="

for file in *
do
    echo "$file"
done


echo
echo "===== READ FILE LINE BY LINE ====="

cat > sample.txt << EOF
john
mike
david
EOF

while read line
do
    echo "$line"
done < sample.txt


echo
echo "===== COMMAND OUTPUT LOOP ====="

who | while read line
do
    echo "$line"
done


echo
echo "===== SELECT LOOP SAMPLE ====="

echo "# Uncomment to practice"

# select option in Linux AWS Docker Exit
# do
#     echo "$option"
# done


echo
echo "===== INFINITE LOOPS ====="

# while true
# do
#     echo "Running..."
# done


# for (( ;; ))
# do
#     echo "Running..."
# done


echo
echo "===== DIRECTORY TRAVERSAL ====="

find . -type f | while read file
do
    echo "$file"
done

echo
echo "===== END OF LOOP REFERENCE ====="

trap 'echo: "errr at "$LINENO" by the "$BASH_COMMAND"' ERR


#loops:
#
#BEGINNER
#│
#├── for loop
#├── while loop
#├── break
#├── continue
#│
#INTERMEDIATE
#│
#├── C-style for loop
#├── until loop
#├── looping through files
#├── looping through arrays
#├── nested loops
#├── reading files with while
#│
#ADVANCED
#│
#├── select loop
#├── infinite loops
#├── process monitoring loops
#├── menu-driven scripts
#├── directory traversal loops
#├── command substitution loops
#├── loop optimization
#└── real-world admin automation