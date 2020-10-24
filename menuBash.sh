#!/bin/bash
clear

echo "╔╗╔╗╔═╗╔╗─╔╗─╔═╗"
echo "║╚╝║║╦╝║║─║║─║║║"
echo "║╔╗║║╩╗║╚╗║╚╗║║║"
echo "╚╝╚╝╚═╝╚═╝╚═╝╚═╝"

option="none"

function option1
{  
   echo -e "\n Current path and user\n \c"
   pwd
   whoami
   echo ""
   echo "to continue press enter key"
   read
   clear
   return 0
}

function option2
{  
   echo -e "\n Processes \n \c"
   ps
   echo ""
   echo "to continue press enter key"
   read
   clear
   return 0
}

function option3
{  
   echo -e "\n Files of current path \n \c"
   ls
   echo ""
   echo "to continue press enter key"
   read
   clear
   return 0
}

function option4
{  
   echo -e "\n Docker \n \c"
   echo "Launch Ubuntu in Docker"
   docker run --name MyContainer -it ubuntu bash
   return 0
}


while [ $option != "5"  ]
    do 
	
	echo -e "\nMenu"
	echo -e "\t1) Check path and User name"
	echo -e "\t2) Check processes"
	echo -e "\t3) Files of current path"
	echo -e "\t4) Launch Ubuntu in Docker"
	echo -e "\t5) Exit\n"
	echo -e "\toption: \c"

	read option
       
        if [ -z $option ] ; then option="none" ; fi
        case $option in 
		"1" )
          option1		     
  		      ;;
		"2" ) 
		      option2
		      ;;
		"3" ) 
		      option3
		      ;;
		"4" ) 
		      option4 
		      ;;
                * )  
		      ;;
	esac
done

clear

echo ""
echo ""
echo "                            \|||/"
echo "                            (o o)"
echo "                   ------ooO-(_)-Ooo------"
echo "                     Thanks and see you! "
echo ""
echo ""



