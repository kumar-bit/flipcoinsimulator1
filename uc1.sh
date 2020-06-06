#!/bin/bash -x
x=$((RANDOM%2))
if [ $x -eq 0 ]
then
echo "head wins"
else
echo "tail wins"
fi

