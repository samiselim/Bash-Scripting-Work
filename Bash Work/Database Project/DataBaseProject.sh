#!/bin/bash

path=$(pwd)
cd $path
if [ -d DataBase ]; then 
    cd DataBase/
else 
    mkdir DataBase
fi
shopt -s extglob

select choice in Create_DB List_DB Drop_DB Connect_DB
do 
    case $choice in 
        Create_DB)
        
        echo "Note : Database Name must be :
                    1)start with charcter
                    2)not contains any special character
                    3)not contains space character
                    and if you want to leave this menu you must Enter <Back> or <back>
            "
        while true
                do
                    
                    read -p "Enter Database Name : " Dname            
                    if [ -d $Dname ]; then 
                        echo "$Dname already exists"
                    else 
                        case  $Dname in
                            [0-9]* | *[[:space:]]* | *[^A-Za-z0-9'_']* )
                                  echo "<$Dname> is Invalid database name : Please Follow Name Instructions !!!"
                            ;;
                            Back | back)
                                break
                            ;;
                            *)
                                echo "Database Created successfully"
                                mkdir $Dname
                                break
                            ;;
                        esac
                    fi
      
                done
        ;;
        List_DB)
            ls -F | grep /
        ;;
        Drop_DB)
            echo "Note : if you want to leave this menu you must Enter <Back> or <back>"
            while true
                do
                    read -p "Enter Database Name : " Dname          
                    if [ -d $Dname ]; then 
                        rm -rf $Dname
                        echo "Database Created successfully"
                        break
                    else 
                        echo "$Dname DB does not exist .. Please make sure Name is correct .. "
                    fi
      
                done
        ;;
        Connect_DB)
        while true
            do 
                read -p "Enter Database Name : " Dname  
                if [ -d $Dname ]; then 
                    cd $Dname
                    select choice in Create_Table List_Table Dorp_Table Insert_Table Select_From_Table Update_From_Table  
                    do 
                        case $choice in
                        Create_Table)
                        read -p "Enter Table Name : " Fname            
                        if [ -f $Fname ]; then 
                            echo "$Fname already exists"
                        else 
                            case  $Fname in
                                [0-9]* | *[[:space:]]* | *[^A-Za-z0-9'_']* )
                                    echo "<$Fname> is Invalid database name : Please Follow Name Instructions !!!"
                                ;;
                                Back | back)
                                break
                                ;;
                                *)
                                    echo -p "Enter Number of Fields : " NumFields 
                                    
                                    for ((i=0;i<$NumFields;i++))
                                    do 
                                        
                                    done
                                ;;
                            esac
                        fi
                        ;;
                        List_Table)
                        ls
                        ;;
                        Dorp_Table)
                        read -p "Enter Database Name : " Fname
                        if [ -f $Fname ]; then 
                            rm -rf $Fname
                        else 
                            echo "$Fname Table does not exist .. Please make sure Name is correct .."
                        fi
                        ;;
                        Insert_Table)

                        ;;
                        Select_From_Table)
                        ;;
                        Update_From_Table)
                        ;;  
                        esac
                    done
                else 
                    echo "DataBase Not found Please Enter name of Exist Database !! "
                fi
            done 
        ;;
    esac
done 