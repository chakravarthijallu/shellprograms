#!/bin/bash
F_ACCOUNT_NO=$1
ACCOUNT_NO=$(echo -n $F_ACCOUNT_NO | cut -c7-)
echo "ACCOUNT NO : $ACCOUNT_NO"