#!/bin/bash
GST_AMT=0
ITEM_AMT=0

function gstTax(){
    local NARGS=$#
    if [ $NARGS -ne 2 ]
    then
       return 100
    fi
    local L_PRICE=$1
    local L_CATEGORY=$2
    if [ $L_CATEGORY == "food" ]
    then
        GST_AMT=$[(L_PRICE*5)/100]
    elif [ $L_CATEGORY == "electronics" ]
    then
        GST_AMT=$[(L_PRICE*12)/100]
    elif [ $L_CATEGORY == "clothes" ]
    then
        GST_AMT=$[(L_PRICE*8)/100]
    else
        return 101
    fi
    
    return 0
}

function marketPrice(){
    local NARGS=$#
    if [ $NARGS -ne 3 ]
    then
       return 200
    fi
    local L_PRICE=$1
    local L_TRANSPORT_TYPE=$2
    local L_GST=$3
    local L_TRANSPORT_PRICE=0
    if [ $L_TRANSPORT_TYPE == "local" ]
    then
       L_TRANSPORT_PRICE=$[(L_PRICE*8)/100]
    elif [ $L_TRANSPORT_TYPE == "national" ]
    then
       L_TRANSPORT_PRICE=$[(L_PRICE*12)/100]
    else
       return 201
    fi
    ITEM_AMT=$[L_TRANSPORT_PRICE+L_PRICE+L_GST]
    return 0
}

#main block