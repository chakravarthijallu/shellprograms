#!/bin/bash
read -p "Enter String 1: " STR1
read -p "Enter String 2: " STR2
MATCH=`expr "$STR1" : "$STR2" `
echo "Two Strings are $MATCH "