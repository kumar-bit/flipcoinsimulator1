#!/bin/bash -x
echo "welcome to flip combination problem"
declare -A coin
read -p "how many times you want to flip the coin" times
echo the single coin toss

for((count=0;count<$times;count++))
do
flip=$((RANDOM%2))
if [[ $flip -eq 1 ]]
then
    if [[ ${coin["H"]} -eq null ]]
     then
       coin["H"]=1
      else
        coin["H"]=$((${coin["H"]}+1))
       fi
else
 

    if [[ ${coin["T"]} -eq null ]]
     then
       coin["T"]=1
      else
        coin["T"]=$((${coin["T"]}+1))
       fi
fi
done
echo the win percentage of each combination of singlet coin toss :
for i in "${!coin[@]}"
do
percentwin=$( echo ${coin[$i]} $times | awk '{print $1/$2 * 100}' )
echo "$i => $percentwin %"
done
 
max1="H"
  for i in ${!coin[@]}
do
if [[ ${coin[$i]} -gt ${coin[$max]} ]]
then
max=$i
fi
done
echo the winner of singlet coin toss is $max1

