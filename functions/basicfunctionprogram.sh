#!/bin/bash
function greet(){
    echo "Hi all how are you all!"
    echo "Thanks for you greet"
}

function meet(){
    echo "Hi all please attend the meeting!"
    echo "Thanks for attending meeting"
}

#main method
ls
echo "Thanks for greeting "
greet #calling function
echo "Attend the meeting"
meet #calling function
echo "Bye!"
