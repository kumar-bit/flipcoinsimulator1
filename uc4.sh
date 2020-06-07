#!/bin/bash -x
declare -A coin 
echo "the double coin toss"
read -p "how many times you want to iterate" iteration
for ((count=0;count<$iteration;count++))
do
flip1=$((RANDOM%2))
flip2=$((RANDOM%2))

if [[ $flip1 -eq 1 ]]
then
   if [[ $flip2 -eq 1 ]]
     then
      if [[ ${coin["HH"]} -eq  null ]]
       then
        coin["HH"]=1
      else
       coin["HH"]=$((${coin["HH"]}+1))
       fi
      else
       if [[ ${coin["HT"]} -eq null ]]
then
coin["HT"]=1
else
  coin["HT"]=$((${coin["HT"]}+1))
fi
fi
else
       if [[ $flip2 -eq 1 ]]
      then
       if [[ ${coin["TH"]} -eq  null ]]
       then
        coin["TH"]=1
      else
       coin["TH"]=$((${coin["TH"]}+1))
       fi
else
 if [[ ${coin["TT"]} -eq  null ]]
       then
        coin["TT"]=1
      else
       coin["TT"]=$((${coin["TT"]}+1))
       fi
fi
fi 
done

echo the win percentage of each combination of singlet coin toss :
for i in "${!coin[@]}"
do
percentwin=$( echo ${coin[$i]} $iteration | awk '{print $1/$2 * 100}' )
echo "$i => $percentwin %"
done
 
max1="HH"
  for i in ${!coin[@]}
do
if [[ ${coin[$i]} -gt ${coin[$max1]} ]]
then
max1=$i
fi
done
echo the winner of singlet coin toss is $max1



