#!/bin/bash -x

read -p "enter n= " n
echo "powers of n that are less than $((2 * n))>256"
limit=256;
result=1;
while [ $result -ne $limit ]
do
   result=$((result*2));
done
