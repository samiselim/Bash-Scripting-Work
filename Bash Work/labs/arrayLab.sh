
# read -p "Enter Size of Array : " size 

# for ((i=0; i<size ; i++))
# do 
#     read -p "Enter Element($i) : " arr[$i] 
# done


# echo "Array is : " ${arr[@]}

read -p "Enter Array : " -a arr

echo ${arr[@]}