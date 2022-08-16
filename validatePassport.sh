#!/bin/bash
read -p "Enter passport no: " PASSPORT_NO
LEN=$(echo -n $PASSPORT_NO | wc -c)
if [ $LEN -eq 8 ]
then 
    echo "Passport number is $PASSPORT_NO is valid"
fi

if [ $LEN -ne 8 ]
then 
    echo "Passport number is $PASSPORT_NO is not valid"
fi

