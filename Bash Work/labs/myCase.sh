#!/bin/bash
read -p "Enter Your String: " str
shopt -s extglob
case $str in
    +([a-z])) echo "Lower";;
    +([A-Z])) echo "Upper";;
    +([0-9])) echo "Number";;
    +([A-Z]|[a-z]|[0-9])) echo "Mixed";;
    *) echo "Nouthing"
esac