#!/bin/bash
read -p "n: " N
REV=0
T=$N

while [ $N -ne 0 ]
do
  REM=$[N%10]
  REV=$[(REV*10)+REM]
  N=$[N/10]
done
# printf "$T $N $REV \n"
if [ $T -eq $REV ]
then
    printf "$T is a palindrome Number\n"
else
    printf "$T is a not palindrome Number\n"
fi