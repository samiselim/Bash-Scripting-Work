#!/bin/bash

: '
hello(){
   x=50
   return $x
}
hello
res=$?
echo $res
'



: '
function sum 
{
    x=$((10+20))
    echo $x
}
y=$(sum)

echo "y: "$y 
'



# function sum 
# {
#     x=$((10+20))
#     echo $x
# }
# #y=$(sum)  ====  y='sum'

# echo "y: "$y 


function sum 
{
    x=$(($1+$2))
    echo $x
}
ret=`sum 1 5 7`
echo $ret