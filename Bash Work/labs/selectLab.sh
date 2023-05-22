#!/bin/bash


select name in CreateDir CreateFile RemoveDir RemoveFile ShowContents Exit
do 
    case $name in 
        CreateDir ) 
            read -p " Enter Dir Name : " Dname
            if [ -d $Dname ]; then
                echo "$Dname already exists"
            else
                mkdir $Dname
                echo "Created successfully"
            fi
        ;;
        CreateFile )
            read -p " Enter File Name : " Fname
            if [ -f $Fname ]; then
                echo "$Fname already exists"
            else
                touch $Fname
                echo "Created successfully"
            fi
        ;;
        RemoveDir )
            read -p " Enter File or Directory Name : " FDname
            if [ ! -d $FDname ]; then
                echo "$FDname does not exist"
            else
                rm -rf $FDname
                echo "Deleted successfully"
            fi
        ;;
        RemoveFile )
            read -p " Enter File Name : " Fname
            if [ ! -f $Fname ]; then
                echo "$Fname does not exist"
            else
                rm -rf $Fname
                echo "Deleted successfully"
            fi
        ;;
        ShowContents )
            ls 
        ;;
        Exit )
            echo "Exiting"
            break
    esac    
done
