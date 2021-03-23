#!bin/bash
#Coded by 7ife
apt install figlet
clear
echo ""
echo -e "\033[1;94m ‎"
figlet -f smshadow CBDW
echo ""
echo -e "\033[1;90m  Github: github.com/7ife"
echo -e "\033[1;90m  E-mail: 7ife@pm.me"
echo ""
echo -e "\033[1;94m::ChatBox:for:DarkWeb::"
echo ""
echo -e ""
sleep 2
echo -e $'\e[1;34m [ CBDW ]\e[0m\e[1;32m # Installing Dependencies\e[0m'
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
cd $PREFIX/share/nginx/html
echo ""
#Enter change the name Admin panel
search="admin_similar-to-password"
read -p "# Enter change name Admin panel >>> " adpanel
if [[ $search != "" && $adpanel != "" ]]; then
sed -i "s/$search/$adpanel/gi" index.html
sed -i "s/$search/$adpanel/gi" cbdw/www/index.php
sed -i "s/$search/$adpanel/gi" cbdw/www/include/Display-ChatBox.php
mv cbdw/www/admin_similar-to-password cbdw/www/$adpanel 
fi
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ""
echo -e " \033[1;93m successful\e[0m"
echo ""
#Enter change password for Admin
search="pass-for-Admin"
read -p "# Enter change password for Admin >>> " passad
if [[ $search != "" && $passad != "" ]]; then
sed -i "s/$search/$passad/gi" cbdw/www/include/Display-ChatBox.php
fi
echo ""
echo -e " \033[1;93m successful"
cd $PREFIX/var/
mkdir run
echo ""
echo -e $'\e[1;34m [ CBDW ]\e[0m\e[1;32m # Starting Nginx & php-fpm\e[0m'
sleep 2
nginx
php-fpm
echo -e " \033[1;93m Nginx & php-fpm is up"
echo ""
sleep 1
echo ""
echo -e $'\e[1;34m [ CBDW ]\e[0m\e[1;32m # Starting TOR\e[0m'
sleep 2
cd $PREFIX/share/nginx/html/cbdw/onion/
tor -f instance_torrc &
sleep 33
cd $PREFIX/share/nginx/html/cbdw/onion/tor-dm
echo ""
echo -e $'\e[1;34m [ CBDW ]\e[0m\e[1;32m # Your Onion domain for ChatBox is Ready\e[0m'
echo ""
echo -e "\e[91m "
cat hostname
echo -e "\e[39m "
echo ""
echo -e "\033[1;33m If Bootstrapped 100% after 15-20 minutes Can go to Your address in the Tor Browser"
echo ""
echo -e $'\e[1;34m [ CBDW ]\e[0m\033[1;90m # Press CTRL + C to close Tor\e[0m'
echo ""
while true
do
sleep 5
done