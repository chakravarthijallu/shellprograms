function add(){
    A=$1
    B=$2
    SUM=$[A+B]
    echo "sum: $SUM"
}

#main block
add $1 $2
add $3 $4

#output:
#chmod u+x addNumberusingfunctions.sh
#./addNumbersusingfunctions.sh 10 20 30 40
#sum: 30
#sum: 70