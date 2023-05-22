
#!/bin/bash
select i in 1 2 3
do 
case $i in
    1)
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
                            [0-9]* | *[[:space:]]* | *[^A-Za-z0-9]* )
                                  echo "<$Dname> is Invalid database name : Please Follow Name Instructions !!!"
                            ;;
                            Back | back)
                                break;
                            ;;
                            *)
                                echo "Valid database name"
                            ;;
                        esac
                    fi
      
                done
    ;;
    2)
    ;;           
    esac
done