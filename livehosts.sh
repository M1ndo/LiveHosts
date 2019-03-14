#!/bin/bash
#Made By ybenel
clear

RED=$(tput setaf 1 && tput bold)
GREEN=$(tput setaf 2 && tput bold)
STAND=$(tput sgr0)
BLUE=$(tput setaf 6 && tput bold)

echo""
echo""
echo""

echo
echo
echo
echo
echo
echo $RED"#====================================================================================#"
echo
echo "find all live hosts in your Network:)"                                          
echo "                                                                  "                                          
echo "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"	 		
echo "MMMMMMMMMMNKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
echo "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
echo "MMMMMMMMWd. .kWMMMMMMMMMMMMMMMMMMMMMMW0KMMMMMMMMMM"
echo "MMMMMMMMk:;. 'OMMMMMMMMMMMMMMMMMMMMMWx.,0MMMMMMMMM"
echo "MMMMMMMK:ok.  ,0MMMMMMMMMMMMMMMMMMMWO. .cXMMMMMMMM"
echo "MMMMMMNl:KO.   ;KWNXK00O0000KXNWMMWO' .c;dWMMMMMMM"
echo "MMMMMMx,xNk.    .;'...    ....';:l:.  ,0l,0MMMMMMM"
echo "MMMMMK;,l;. .,:cc:;.                  .dx,lWMMMMMM"
echo "MMMMWo    ,dKWMMMMWXk:.      .cdkOOxo,. ...OMMMMMM"
echo "MMMM0'   cXMMWKxood0WWk.   .lkONMMNOOXO,   lWMMMMM"  
echo "MMMWl   ;XMMNo.    .lXWd. .dWk;;dd;;kWM0'  '0MMMMM"
echo "kxko.   lWMMO.      .kMO. .OMMK;  .kMMMNc   oWMMMM"	
echo "X0k:.   ;KMMXc      :XWo  .dW0c,lo;;xNMK,   'xkkk0"
echo "kko'     :KMMNkl::lkNNd.   .dkdKWMNOkXO,    .lOKNW"
echo "0Kk:.     .lOXWMMWN0d,       'lxO0Oko;.     .ckkOO"
echo "kkkdodo;.    .,;;;'.  .:ooc.     .        ...ck0XN"
echo "0XWMMMMWKxc'.          ;dxc.          .,cxKK0OkkOO"
echo "MMMMMMMMMMMN0d:'.  .'        .l'  .;lxKWMMMMMMMMMN"
echo "MMMMMMMMMMMMMMMN0xo0O:,;;;;;;xN0xOXWMMMMMMMMMMMMMM" 
echo "MMMMMMMMMMMMMMMMMMMMMMWWWWWMMMMMMMMMMMMMMMMMMMMMMM"
echo "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
echo "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
echo "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
echo "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
echo $GREEN"==========================================# "
echo $GREEN"Finding The Live hosts up on Network :)   # "
echo $GREEN"usage: Enter the range for your class     # "
echo $BLUE "<---Made By ybenel--->          # "
echo $BLUE"<---LiveHosts--->                         # "
echo $GREEN"v1.0                                      # "
echo "#===================================================================================#"
echo ""
echo Usage:
echo Enter your range 
echo "example: 192.168.1 "
echo "#--------------------#"  
echo
read class
echo
echo "#-----------------------------------#"
echo $RED"finding the hosts for you..... :)"
sleep 6
echo 
echo "[*]Found"
echo
for x in `seq 1 254`;do
ping -c 1 $class.$x | grep "bytes from" | cut -d " " -f4 | cut -d ":" -f1 &
done
echo "#-----------------------------------#"
echo "thanks for using...Good Day :) "
sleep 2
echo
read -p "Please Press Enter to exit script"
