#!bin/bash
#Coded by 7ife
apt install toilet
clear
echo -e "\033[1;93m ‎"
toilet -f mono12 ChatBox
sleep 1
echo ""
echo -e "              \033[1;91m  Author   \033[1;90m: \033[1;95m7ife"
echo -e "              \033[1;97m  Github   \033[1;90m: \033[1;93mgithub.com/7ife"
echo ""
echo -e ""
sleep 4
echo -e $'\e[1;33m[\e[0m\e[1;77m CBDW \e[0m\e[1;33m]\e[0m\e[1;32m # Installing Dependencies ! \e[0m'
sleep 5
apt install wget -y
apt install nginx -y
apt install php-fpm -y
apt install tor -y
cd $PREFIX/etc/nginx/
rm nginx.conf
wget https://raw.githubusercontent.com/7ife/7ife.github.io/master/data/conf.zip
sleep 3
unzip conf.zip
rm conf.zip
cd $PREFIX/share/nginx/
wget https://raw.githubusercontent.com/7ife/7ife.github.io/master/data/html.tar.gz
sleep 3
tar -xvpf html.tar.gz
rm html.tar.gz
cd $PREFIX/var/
mkdir run
echo -e $'\e[1;33m[\e[0m\e[1;77m CBDW \e[0m\e[1;33m]\e[0m\e[1;32m ## Starting Ngnx and php-fpm \e[0m'
nginx
sleep 5
php-fpm
echo -e "\033[1;95mNgnx and php-fpm is up"
sleep 5
echo -e $'\e[1;33m[\e[0m\e[1;77m CBDW \e[0m\e[1;33m]\e[0m\e[1;32m ## Setting up TOR \e[0m'
sleep 5
cd $PREFIX/share/nginx/html/cbdw/onion/
tor -f instance_torrc &
sleep 20
cd $PREFIX/share/nginx/html/cbdw/onion/tor-dm
echo ""
echo -e $'\e[1;33m[\e[0m\e[1;77m CBDW \e[0m\e[1;33m]\e[0m\e[1;32m # Your Onion domain for ChatBox is Ready! \e[0m'
echo ""
echo -e "\e[91m "
cat hostname
echo -e "\e[39m "
echo ""
echo -e $'\[1;33m after 15-20 minutes, can go to your address in the Tor Browser \e[0m'
echo ""
echo -e $'\e[1;33m[\e[0m\e[1;77m CBDW \e[0m\e[1;33m]\e[0m\e[1;32m ## Press CTRL + C to turn all it off \e[0m'
echo ""
while true
do
sleep 5
done