#!/bin/bash
res=1
fact(){
 n=$1
 if (( n == 1 || n == 0 ))
 then
     return 1
 else
     res=$(( res * n))
     fact $(( n - 1 ))
     return $res
 fi
}

fact 5
echo "Factorial of 5 is : $?"
