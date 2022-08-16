#!/bin/bash

i=5
until [ $i -gt 15 ]
do
    echo "number $i"
    let i++
done