#! /bin/bash
read -p "Enter Your Name: " name
if [ $name = "Sunny" ]
then
    echo "Hello $name Very Very Good Evening"
else
    echo "Hello Guest, Good Evening"
fi
echo "How are you"

: '
read -p "Enter Your Name : " NAME
if [ $NAME = "Sunil" ]
then
    echo "Hello $NAME Very Very Good Morning"
fi 

if [ $NAME = "Manoj" ] ; then
    echo "Hello $NAME Very Very Good Evening"
fi
echo "How are you"

'
