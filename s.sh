#!bin/bash
#Coded by 7ife
apt install figlet
clear
echo ""
echo -e "\033[1;94m ‎"
figlet -f smshadow CBDW
sleep 3
echo ""
echo -e "                 \033[1;97m  Github: \033[1;90mgithub.com/7ife"
echo -e "                 \033[1;97m  E-mail: \033[1;90m7ife@pm.me"
echo ""
echo -e "            \033[1;94m::ChatBox::DarkWeb::"
echo ""
echo -e ""
sleep 3
echo -e $'\e[1;34m[\e[0m\e[1;77m \033[1;90mCBDW \e[0m\e[1;34m]\e[0m\e[1;32m # Installing Dependencies! \e[0m'
sleep 2
apt install wget -y
apt install nginx -y
apt install php-fpm -y
apt install tor -y
cd $PREFIX/etc/nginx/
rm nginx.conf
wget https://raw.githubusercontent.com/7ife/7ife.github.io/master/data/conf.zip
unzip conf.zip
rm conf.zip
cd $PREFIX/share/nginx/
wget https://raw.githubusercontent.com/7ife/7ife.github.io/master/data/html.tar.gz
tar -xvpf html.tar.gz
rm html.tar.gz
cd $PREFIX/var/
mkdir run
echo ""
echo -e $'\e[1;34m[\e[0m\e[1;77m CBDW \e[0m\e[1;34m]\e[0m\e[1;32m ## Starting Nginx & php-fpm \e[0m'
sleep 2
nginx
sleep 1
php-fpm
echo -e "            \033[1;93m Nginx & php-fpm is up"
echo ""
sleep 1
echo ""
echo -e $'\e[1;34m[\e[0m\e[1;77m CBDW \e[0m\e[1;34m]\e[0m\e[1;32m ## Starting TOR \e[0m'
sleep 2
cd $PREFIX/share/nginx/html/cbdw/onion/
tor -f instance_torrc &
sleep 33
cd $PREFIX/share/nginx/html/cbdw/onion/tor-dm
echo ""
echo -e $'\e[1;34m[\e[0m\e[1;77m CBDW \e[0m\e[1;34m]\e[0m\e[1;32m # Your Onion domain for ChatBox is Ready! \e[0m'
echo ""
echo -e "\e[91m "
cat hostname
echo -e "\e[39m "
echo ""
echo -e "\033[1;33mafter 15-20 minutes, can go to your address in the Tor Browser"
echo ""
echo -e $'\e[1;34m[\e[0m\e[1;77m CBDW \e[0m\e[1;34m]\e[0m\e[1;32m ## Press CTRL + C to turn all it off \e[0m'
echo ""
while true
do
sleep 5
done