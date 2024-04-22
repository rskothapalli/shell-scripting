#!/bin/bash

UMBER=$1
if [ $NUMBER gt 10 ]
then
echo "Given number is greater than 10"
else 
echo "Given number is less than 10"
fi

#-eg(equal to), -ne(not equal to), -gt(greater than), -ge(greater than equal to), 
#for greater than not equal to, we don't have direct one, instead combine -gt+ -ne. 
#eg: if [ $a -gt $b ] && [ $a -ne $b ] 
#-lt(less than), -le(less than qual to), for Less than not equl to, we combine
#le, ne