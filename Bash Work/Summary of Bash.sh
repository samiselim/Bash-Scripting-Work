#!/bin/bash
#echo "Hello var = "$var 

################################################################
#Qouting 

# ' ' --> Disable any Special characters
#echo '$x' --> out : $x

# " " --> Enable $ Character , Disanle *, Enable ` ` ? ,...
#echo "$x" --> out : value of x

# BackSlash '\' 
#1) Skip Special Character ex: echo "\$x" out: $x


################################################################
#echo \ --> Enter Line 
#echo $PS2 --> show NewLine Character '>'
#if i want to change it i will run this commaned
#ecport PS2="\u@PS2 : \t >> "
#if i run echo $PS2  it will shoe ( username@PS2 : time >> ) ex: sami@PS2 : 20:10:26 >>



################################################################
##Bash Untype variables --> Check type in raunning Time(Dynamic Language)
#To Know all variables created in Enviroment i will use command (set)
#ex: set | grep 'Variable_Name =' --> out Value of variable 

## Integers Variables
#x=5
#y=6
#declare -i z = x+y    OR    
#z=$(($x + $y))        OR    --> this method used for performing calculations quickly without assigning values
#let z=$x+$y           OR
#typeset -i z=$x+$y

#declare -i x="a" --> return 0 for any non integer value

################################################################
#to undeclare variable we use ( unset Variable_Name) 
#ex : city = "cairo" 
#echo ${city="Gize"} --> out : cairo 

#unset city
#echo ${city="Gize"} --> out : Giza

################################################################################

#to inherit command Line from Enviroment
#using command (bash)
#and if you Entered (echo $$) it will print number of shell
#if you Entered (bash) it will go to child terminal and
#if you Entered agin (echo $$) it will print another number of shell
#and all files in parent not supported for child 
#you can support files for child from parent using (export) while creating the variables in parent shell

################################################################
#Predefined variables 

# echo $* or echo $@  --> {All arguments}
# echo $#   --> {Number of arguments}
# echo $1   --> {First argument}
#EX:
#echo "All arguments : "$*
#echo "Number of arguments : "$#
#echo "First argument : "$1

# echo $? --> this command will return 0 if the last command successfully performed and return 1 if it did not performed successfully  
# echo $0 --> this command will return executed script name 
################################################################
#Conditions

#test $x == "5" && echo "Y" || echo "N" --> type of conditions which test if x == 5 or not if yes it will echo y and if not it will echo N

#[ $x == 5 ] && echo "Y" || echo "N"

#[ "a" = "a" -a "b" = "b" ] &&  echo "Y" || echo "N" --> -a (and operator ) ,, -o (OR Operator)

#[[ "a" = "a" && "b" = "b" ]] && echo "Y" || echo "N"
#[[ "a" = "a" || "b" = "b" ]] && echo "Y" || echo "N"

###########Regex Comparison --> we must use [[]] double square brackets
#shopt -s extglob    --> To force Terminal to deal with Regex patterns
#var="Ali"
#[[ $var = A* ]] && echo "y" || echo "N"

# ([@&]) -->  All Special characters


#read -t 5 -p "Enter Data : " x 
#(-t 5) timeout of terminal 
#(-p " Any message will be printed before reading value ")


######## if elif else Condtion ######## 

#read -p "Enter Your Distribution : " dist

#if [ ${dist,,} = "redhat" ]; then  # you can use double equal (==)
#    echo "Yum Package"
#elif [ ${dist,,} = "ubuntu" ]; then
#    echo "apt-get"
#elif [ ${dist,,} = "centos" ]; then
#    echo "pacman"
#else 
#   echo "Error Input"
#fi

# conditions with integers 
# -eq equal  ,, 
# -ne not equal ,, 
# -gt greater than ,, 
# -ge greater or equal than ,, 
# -lt less than ,, 
# -le less or equal than


# to check if any file exist or not we can use the following
#
#if [ -f 'file1.sh' ];then 
#    echo "found file1.sh file"
#else 
#    echo "not found file1.sh file"
#fi

##############################################################
# Three Types of (for Loop)

#for ((i=0;i<5;i++))
#do 
#    echo $i
#done
##############################################################
#for i in 1 2 3 4 5
#do 
#    echo $i
#done 
##############################################################
#for i in {0..100}
#do 
#   if [ $(expr $i % 2) == 0 ]; then
#       echo $i
#   fi
#done
#########################################################################
## While Loop

# while true
# do 
#     read -p "Enter Your Name: " name
#     if [[ ${name} = [Ss]ami ]] ; then
#         echo "Welcome to Manager"
#     elif [[ ${name} = [Aa]hmed ]] ; then
#         echo "Welcome to Team Leader"
#     elif [[ ${name} = [Ee]xit ]] ; then
#         echo "Goodbye"
#         break
#     else 
#         echo "Welcome to Student"
#     fi
# done
##############################################################
##### Case #####
# read -p "Enter Your Number: " num
# case ${num} in 
#     1 | 2)  
#         pwd;;
#     3 | 4)
#         cd 
#         pwd;; 
#     *) 
#          echo " * " ;;
# esac

##############################################################################
# Patterns

#  shopt -s extglob    --> To force Terminal to deal with Regex patterns
##
# shopt -s extglob
# case ${1} in 
#     @([a-z])) 
#         echo "Lower" 
#         ;;
#     @([A-Z])) 
#         echo "Upper" 
#         ;;
#     +([1-9]))
#         echo "Number" 
#         ;;
#     *) echo "Error"
# esac

##############################################################################
#### select ###

# select i in 1 2 3 
# do 
#     echo $i
# done 
############################################################################
### Debugging ###

#Start Debug using (set -x)
#
# /* Code */
#
#Stop Debug using (set +x)
############################################################################
#arrays 
# Reading array elements from shell
# read -p "Enter Array : " -a arr

# myarr=(1 2 3 4 5)    --> definition of array
# echo ${myarr[@]}     --> Print all elements of array 
# echo ${!myarr[@]}    --> Print indexes of all elements  
# echo ${#myarr[@]}    --> Print Lenght of all elements
# echo ${myarr[@]:2:3} --> Slicing Print 3 elements after element number 2
# echo ${myarr[-1]}    --> Print Last Element 
# myarr+=("Ahmed" "Sami") --> To Append Elements to Array
# echo ${myarr[5]:2:2} --> Slicing element number 5  to Characters
# myarr=${myarr[@]/5/2} --> Replacing all 5 Values with 2 value
# Equalling 2 arrays --> arr1=(1 2 3 4 5) == arr2=${arr1[@]}

######################################################################
#Function###

#1)

# hello(){
#     echo "hello world"
# }

#2)

# hello(){
#     echo "hello world"
#     return 0  
# }
# ret=$?
#
# ret --> is the return of the function

# Calling --> hello

## Local Variable inside -->   local x=50
#######################################################################
#Multi Line comments 
: '
    this is comment
'
########################################################################
