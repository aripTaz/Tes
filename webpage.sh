#!/bin/bash
# VPN Premium Script
# by Taz-VPN
# Telegram: https://t.me/Tazpin 
# Thanks for using this script, Enjoy Highspeed VPN Service


clear
echo -e "================================================="
echo -e "============== Wait Installasi =================="
echo -e "================================================="
# Check update
apt update

clear
# install requery
apt-get -y install apt-transport-https lsb-release ca-certificates
wget -0 /etc/apt/trusted.gpg.d/php.gpg https://packges.sury.org/php/apt.gpg
echo "deb https://packges.sury.org/php/$(lsb_release -sc) main" > /etc/apt/source.list.d/php.list

# install php & apache
apt-get update
apt-get -y install php7.4
apt install -y php7.4-common php7.4-fpm php7.4-cli php7.4-mcrypt php7.4-curl  php7.4-mysql php7.4-ssh2 php7.4-mbstring php7.4-xml php7.4-gd

# Make folder for webpage

mkdir /home/panel
mkdir /home/panel/html

# download basic set
wget -0 /etc/apache2/sites-enable/000-default.conf "httpa://raw.githubusercontent.com/kruleshvpn/OCSPanel1_KAFAShop/main/000-default.conf"

# make basic webpanel file 
touch /home/panel/html/iindex.html

# Setting sedikit

chmod -R 777 /home/panel/html

# download htaccess
cd /home/panel/html
wget -0 /home/panel/html/.htaccess "https://raw.githubusercontent.com/kruleshvpn/OCSPanel_KAFAShop/main/.htaccess"

#tweak file apache2
a2enmod rewrite

#Restart apache
systemctl restart apache2

cd

clear

cd
rm -rf webpage.sh

echo -e ""
echo -e "   ___ ___ ___ _____ _   _  ___   _____ _  _  "
echo -e "  / __| __| __|_   _/_\ | \| \ \ / / _ \ \| | "                                       
echo -e "  \__ \ _|| _|  | |/ _ \| .` |\ V /|  _/ .` | "
echo -e "  |___/___|___| |_/_/ \_\_|\_| \_/ |_| |_|\_| "
echo -e ""
echo -e "[+]=========================================[+]"
echo -e "[+]       Copyright Script by Taz-VPN       [+]"
echo -e "[+]         Whatshapp : 083849022672        [+]"
echo -e "[+]      Telegram : http://t.me/Tazpin      [+]"
echo -e "[+]=========================================[+]"
echo -e ""

clear