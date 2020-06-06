#!/bin/bash 
header=0;
tailer=0;
a=0;
b=0;
counter=0
trolly=0

declare -A e
for (( i=1; i<10; i++ ))
do
x=$((RANDOM%2))
if [ $x -eq 0 ]
then
echo "head wins"
let "header++"
declare -A d

d[$counter]="head"
((counter++))

else


echo "tail wins"
let "tailer++"
e[$trolly]="tail"
((trolly++))
fi
done
echo  "header: $header"
echo  "tailer: $tailer"
echo "${d[@]}"
echo "${e[@]}"

total=$(( $header + $tailer ))
echo "(($header / $total))"
echo "tailor wins percentage : (($tailer / $total))" 

