#!/bin/bash
read -p "Enter Gross Amount: " GROSS_AMOUNT
read -p "Gender: " GENDER
TAXABLE_AMOUNT=0

if [ $GENDER = "male" ]
then
   TAXABLE_AMOUNT=$[(GROSS_AMOUNT*15)/100]
else
   TAXABLE_AMOUNT=$[(GROSS_AMOUNT*12)/100]
fi
echo "Gross Income : $GROSS_AMOUNT and Taxable Amount : $TAXABLE_AMOUNT"