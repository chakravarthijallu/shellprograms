#! /bin/bash
read -p "Enter aadhar Number :" AADHARNUMBER
echo "AADHARNUMBER : $AADHARNUMBER"
COUNT=$(echo -n $AADHARNUMBER | wc -c)
echo $COUNT