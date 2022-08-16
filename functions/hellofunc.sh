#!/bin/bash
: '
# Define your function here
Hello () {
    echo "Hello World"
}

# Invoke your function
Hello
'

: '
# Define your function here with arguments
Hello () {
    echo "Hello World $1 $2"
}


# Invoke your function with passing arguments
Hello Zara Ali
'

# Define your function here with return code
function Hello () {
    echo "Hello World $1 $2"
    return 200
}

SayHi () {
    echo "Welcome My Portal Mr.${1}"
    return 42
}

Welcome () {
    echo "Welcome to Function call"
    return 90
}

# Invoke your function with passing arguments
Hello Zara Ali

# Capture value returned by last command
STATUS=$?
echo "Status Code is $STATUS"

# Calling function with passing name as parameter
SayHi Chakravarthi
ret=$?
echo "Status Code is $ret"

# Calling function here
Welcome
mes=$?
echo "Status Code is $mes"