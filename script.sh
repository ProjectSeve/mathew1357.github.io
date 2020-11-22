#!/bin/bash
colors(){ 
				red="`tput setaf 1`" 
				green="`tput setaf 2`" 
				cyan="`tput setaf 6`" 
				bold="`tput bold`" 
				norm="`tput sgr0`" 
				magen="`tput setaf 5`"
}
colors
#==============#
# Created By Seve #
# Created By Seve #
# Created By Seve #
# Created By Seve #
# Created By Seve #
# Created By Seve #
# Created By Seve #
#==============#
# START COMMAND
nere=$(wget https://git.io/codes.sh -q -O -)
clear
# Print Info IN
echo "    ░▒█▀▀▀█░▒█▀▀▀░▒█░░▒█░▒█▀▀▀"
echo "    ░░▀▀▀▄▄░▒█▀▀▀░░▒█▒█░░▒█▀▀▀"
echo "    ░▒█▄▄▄█░▒█▄▄▄░░░▀▄▀░░▒█▄▄▄"
echo
echo "=========================================="
echo "        SeveScript Beta v2.3"
echo
read -s -p "Password: " pass
echo ""
if [ "$pass" == "$nere" ] 
then 
echo "Success!!"
else 
echo "Access Denied!!"
exit 1
fi
read -n 1 -s -r -p "Press ${green}Enter Key${norm} to Continue Or Press ${red}CTRL + C${norm} to Stop"

echo ""
read -p "[+] Type Your Desired Port: " hens

read -n 1 -s -r -p "Press ${green}Enter Key${norm} to Continue Or Press ${red}CTRL + C${norm} to Stop"

#GAWA NI SEVE
#Update Packages
sudo apt-get update
# Install 
sudo apt-get install ziproxy
# Installing Net Tools If Needed
apt-get install net-tools
# Agruments For Our GG
happy="$(ifconfig | sed '2!d' | grep inet | grep 10 | awk '!x[$0]++' | awk '{print $2}')"
# Delete File
sed -i '/^/d' /etc/ziproxy/ziproxy.conf
# Catting The File
cat <<EOF >>/etc/ziproxy/ziproxy.conf
Port = $hens
AllowMethodCONNECT = true
UseContentLength = false
ImageQuality = {30,25,25,20}
ErrorLog = "/etc/ziproxy/error.log"
AccessLog = "/etc/ziproxy/access.log"
RunAsUser = "ziproxy"
RunAsGroup = "ziproxy"
Address="$happy"
EOF
# Clear
ziproxy -d
clear
# Print Info
echo "    ░▒█▀▀▀█░▒█▀▀▀░▒█░░▒█░▒█▀▀▀"
echo "    ░░▀▀▀▄▄░▒█▀▀▀░░▒█▒█░░▒█▀▀▀"
echo "    ░▒█▄▄▄█░▒█▄▄▄░░░▀▄▀░░▒█▄▄▄"
echo
echo "=========================================="
echo "     •NO SSH IS SUCCESSFULLY INSTALLEDv2•"
echo
echo " Your Port is $hens"
echo "Special Thanks To ATSL"
echo "${green}===========AUTO SCRIPT BY SEVE===========${norm}"
echo "==========================================" 
read -n 1 -s -r -p "Press ${green}Enter Key${norm} to Clean"
echo
