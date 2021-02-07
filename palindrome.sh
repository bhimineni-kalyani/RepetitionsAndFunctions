#!/bin/bash -x

function check_palindrome() {
     num1=$1
     temp=0
     while [ $num1 -ne 0 ]
     do 
           temp=$(($temp*10))
           temp=$(($temp + $num1%10))
           num1=$(($num1/10))
     done
     if [ $temp -eq $2 ]
     then
           echo 1
     else
           echo 0
     fi
}

result="$(check_palindrome $1 $2 )"
if [ $result -eq 1 ]
then 
     echo true
else
    echo false
fi
