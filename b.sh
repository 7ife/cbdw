#!bin/bash
#Coded by 7ife
clear
echo ""
echo -e "\033[1;92m ‎"
echo "${k}░██╗░░░░░░░██╗███████╗██╗░░░░░░█████╗░░█████╗░███╗░░░███╗███████╗";
echo "${k}░██║░░██╗░░██║██╔════╝██║░░░░░██╔══██╗██╔══██╗████╗░████║██╔════╝";
echo "${k}░╚██╗████╗██╔╝█████╗░░██║░░░░░██║░░╚═╝██║░░██║██╔████╔██║█████╗░░";
echo "${k}░░████╔═████║░██╔══╝░░██║░░░░░██║░░██╗██║░░██║██║╚██╔╝██║██╔══╝░░";
echo "${k}░░╚██╔╝░╚██╔╝░███████╗███████╗╚█████╔╝╚█████╔╝██║░╚═╝░██║███████╗";
echo "${k}░░░╚═╝░░░╚═╝░░╚══════╝╚══════╝░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚══════╝";
echo "${k}";
echo "${k}██████╗░░█████╗░░█████╗░██╗░░██╗";
echo "${k}██╔══██╗██╔══██╗██╔══██╗██║░██╔╝";
echo "${k}██████╦╝███████║██║░░╚═╝█████═╝░";
echo "${k}██╔══██╗██╔══██║██║░░██╗██╔═██╗░";
echo "${k}██████╦╝██║░░██║╚█████╔╝██║░╚██╗";
echo "${k}╚═════╝░╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝";
echo ""
echo -e "\033[1;90m  Github: github.com/7ife"
echo -e "\033[1;90m  E-mail: 7ife@pm.me"
echo ""
echo -e "\033[1;94m::Start Nginx + PHP-FPM and TOR::"
sleep 3
echo ""
echo -e $'\e[1;34m::CBDW::\e[0m\e[1;32m #Starting Nginx & php-fpm\e[0m'
sleep 2
nginx
php-fpm
echo -e ""
echo -e $'\e[1;34m::CBDW::\e[0m\e[1;32m #Starting TOR\e[0m'
sleep 2
cd $PREFIX/share/nginx/html/cbdw/onion/
rm -R tor-data
sleep 1
tor -f instance_torrc &
sleep 33
cd $PREFIX/share/nginx/html/cbdw/onion/tor-dm
echo ""
echo -e $'\e[1;34m::CBDW::\e[0m\e[1;32m #Your Onion domain for ChatBox is Ready\e[0m'
echo ""
echo -e "\e[91m "
cat hostname
echo -e "\e[39m "
echo ""
echo -e "\033[1;33m If Bootstrapped 100% after 15-20 minutes Can go to Your address in the Tor Browser"
echo ""
echo -e $'\e[1;34m::CBDW::\e[0m\033[1;90m #Press CTRL + C to close Tor\e[0m'
echo ""
while true
do
sleep 5
done