sudo apt-get update
sudo apt-get install -y openvpn
sudo apt-get install -y network-manager-openvpn-gnome
sudo apt-get install -y openvpn network-manager-openvpn network-manager-openvpn-gnome network-manager-vpnc
sudo apt update
sudo apt install apache2
ifconfig | grep inet |awk '{ print 

exit


};
sudo apt-get install apache2
sudo service apache2 status
sudo ufw app list
sudo ufw app info "Apache Full"
ifconfig eth0 | grep inet | awk '{ print $2 }'
sudo ufw allow in "Apache Full"
sudo ufw app info "Apache Full"
sudo ufw allow in "Apache Full"
sudo apt install mysql-server
sudo apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql
sudo mysql
sudo mysql_secure_installation
sudo apt install mysql-server
sudo mysql_install_db
mkdir -p /var/lib/mysql
sudo apt-get install mysql-server mysql-client mysql-common
chown -R mysql.mysql /var/lib/mysql
chmod -R 775 /var/lib/mysql
sudo service apparmor stop
sudo ln -s /etc/apparmor.d/usr.sbin.mysqld /etc/apparmor.d/disable/
sudo service apparmor restart
sudo aa-status
sudo reboot
sudo apt-get install apache2
sudo apt-get install php
sudo apt-get install php-mysql
sudo apt-get install mysql-server
sudo apt-get install libapache2-mod-php
sudo apt-get install php-mcrypt
sudo apt-get install phpmyadmin
sudo apt-get install php-mysql
sudo apt-get install mysql-server
sudo apt-get install libapache2-mod-php
sudo apt-get install php-mcrypt
sudo apt-get install phpmyadmin
sudo apt install apache2
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
cd /var/lib/dpkg/updates
sudo rm *
sudo apt-get update
sudo apt install apache2
sudo apt-get remove --purge mysql*
sudo apt clean
sudo apt autoclean
sudo rm /var/cache/apt/archives/*\.deb
sudo rm /var/cache/apt/archives/partial/*
claer
sudo service mysql stop
sudo killall -9 mysql
sudo apt-get remove --purge mysql-server mysql-client mysql-common
sudo service mysql stop && sudo killall -9 mysql && sudo killall -9 mysqld && sudo apt-get remove --purge mysql-server mysql-client mysql-common && sudo apt-get autoremove && sudo apt-get autoclean && sudo deluser mysql && sudo rm -rf /var/lib/mysql && sudo apt-get purge mysql-server-core-5.7 && sudo apt-get purge mysql-client-core-5.7 && sudo rm -rf /var/log/mysql && sudo rm -rf /etc/mysql
sudo apt-get purge mysql*
sudo apt clean
sudo apt autoclean
sudo apt-get install mysql-server
sudo apt-get -f install
whoami
cd /home/neosoft/Downloads
chmod 755 xampp-linux-installer.run
ls -l
ls -l xampp-linux-installer.run
sudo ./xampp-linux-installer.run
sudo apt-get install gksu
cd /home/neosoft/Downloads
sudo dpkg -i code_1.55.0-1617120720_amd64.deb
sudo /opt/lampp/uninstall
sudo rm -r /opt/lampp
cd /Home/neosoft/Downloads
cd /home/neosoft/Downloads
sudo chmod 755 xampp-linux-installer.run
ls -l xampp-linux-installer.run
sudo ./xampp-linux-installer.run
sudo /opt/lampp/lampp start
sudo /opt/lampp/lampp stop
sudo ln -s /opt/lampp/lampp /etc/init.d/lampp
sudo update-rc.d lampp start 80 2 3 4 5 . stop 30 0 1 6 .
$ sudo /opt/lampp/lampp start
sudo /opt/lampp/lampp start
apt install net-tools
sudo apt install net-tools
sudo dpkg --configure -a
$ sudo dpkg --configure -a
sudo dpkg --configure -a
sudo /opt/lampp/lampp start
nano /etc/apache2/ports.conf
sudo nano /etc/apache2/ports.conf
sudo nano /etc/apache2/sites-available/000-default.conf
sudo nano /etc/apache2/ports.conf
sudo nano /etc/apache2/sites-available/default-ssl.conf
sudo systemctl restart apache2.service
cd /etc/apache2
apache2ctl configtest
systemctl stop apache2.service
systemctl restart apache2.service
cd /etc/apache2
apache2ctl configtest
sudo nano /etc/apache2/ports.conf
sudo nano /etc/apache2/sites-available/000-default.conf
sudo nano /etc/apache2/sites-available/default-ssl.conf
sudo systemctl restart apache2.service
sudo apt-get install psmisc
sudo lsof -t -i tcp:80 -s tcp:listen | sudo xargs kill
sudo service apache2 start/restart
sudo service apache2 restart
service apache2 start/restartsudo nano /etc/apache2/apache2.conf
sudo nano /etc/apache2/apache2.conf
sudo -i cd /opt/lampp ./uninstall
sudo /opt/lampp/uninstall
sudo rm -r /opt/lampp
sudo apt-get update
sudo apt-get install apache2
sudo service apache2 status
sudo apt-get install apache2
sudo service apache2 status
sudo apt autoremove
sudo apt remove apache2.*
dpkg -S `which apache2
dpkg -S `which apache2`
clear
sudo apt install apache2
sudo apt install mysql-server
sudo service apache2 stop
sudo apt-get purge apache2 apache2-utils apache2.2-bin apache2-common
sudo apt-get autoremove
whereis apache2
apache2: /etc/apache2
whereis apache2
apache2: /etc/apache2
sudo rm -rf /etc/apache2
sudo apt-get --purge remove apache2
sudo apt-get remove apache2-common
sudo apt remove apache2
sudo apt purge apache2
sudo apt update
sudo apt upgrade
sudo ufw allow ssh
sudo ufw allow 80
sudo ufw allow 443
sudo ufw enable
sudo apt install apache2
sudo systemctl status apache2
sudo apt install php7.4 php7.4-mysql php-common php7.4-cli php7.4-json php7.4-common php7.4-opcache libapache2-mod-php7.4
sudo apt-get install curl
sudo apt-get install mysql-server
sudo apt-get install php libapache2-mod-php php-mysql
sudo nano /etc/apache2/mods-enabled/dir.conf
sudo systemctl restart apache2
apt-cache search php- | less
apt-cache show php-cli
sudo apt-get install php-cli
sudo nano /var/www/html/info.php
sudo apt install mariadb-server mariadb-client
sudo systemctl status mariadb
sudo mysql_secure_installation
sudo apt install php7.4 php7.4-mysql php-common php7.4-cli php7.4-json php7.4-common php7.4-opcache libapache2-mod-php7.4
sudo apt install php7.4
sudo apt install  glob php7.4
sudo apt install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install php7.4
php -v
sudo apt install php7.4 php7.4-mysql php-common php7.4-cli php7.4-json php7.4-common php7.4-opcache libapache2-mod-php7.4
php --version
sudo systemctl restart apache2
echo '<?php phpinfo(); ?>' | sudo tee -a /var/www/html/phpinfo.php > /dev/null
clear
mysql -V
dpkg -l | grep -e mysql-server -e mariadb-server
SHOW VARIABLES LIKE ‘%version%’;
claer
clear
sudo apt install php7.0-mysql mariadb-server mariadb-client
sudo mysql_secure_installation
clear
sudo mysql
sudo systemctl restart mysql.service
mysql -u root -p
sudo apt install php-gettext phpmyadmin
gksu gedit /etc/apache2/apache2.conf
sudo nano /etc/apache2/apache2.conf
sudo ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf-available/phpmyadmin.conf
sudo a2enconf phpmyadmin.conf
sudo systemctl restart apache2
sudo apt-get update
sudo apt-get install phpmyadmin php-mbstring php-gettext
sudo service apache2 restart
clear
sudo phpenmod mcrypt
sudo apt-get install php-mbstring php7.0-mbstring php-gettext libapache2-mod-php7.0
sudo systemctl restart apache2
clear
php -m
sudo apt-get update
sudo apt-get install python-mhash
clear
php -m
sudo apt-get install python-mhash
php -m
php --version
sudo apt-get install php7.4-mbstring
sudo service apache2 restart
clear
mysql -u root
sudo mysql -u root
clear
sudo apt reinstall mariadb-server
sudo apt purge mariadb-server
sudo rm -rf /var/lib/mysql/
sudo systemctl status mysql
sudo systemctl stop mysql
sudo apt-get remove --purge mysql-server mysql-client mysql-common
sudo apt-get autoremove
sudo apt-get autoclean
sudo rm -rf /var/lib/mysql/
sudo rm -rf /etc/mysql/
sudo apt-get purge mariadb-server 
sudo apt update
sudo apt install phpmyadmin php-mbstring php-zip php-gd php-json php-curl
sudo mysql
claer
clear
sudo apt install mysql-server
sudo systemctl status mysql
clear
sudo apt install mariadb-server
sudo systemctl status mariadb
sudo apt autoremove
sudo apt remove apache2.*
dpkg -S `which apache2`
sudo service apache2 start
claer
clear
sudo service apache2 start
sudo apt-get --purge remove apache2
sudo apt-get remove apache2-common
sudo service apache2 stop
sudo apt-get purge apache2 apache2-utils apache2.2-bin apache2-common
sudo rm -Rf /etc/apache2 /usr/lib/apache2 /usr/include/apache2
sudo service apache2 stop
sudo apt-get purge apache2 apache2-utils apache2.2-bin apache2-common
sudo apt-get autoremove
whereis apache2
clear
sudo service apache2 stop
$ sudo apt-get purge apache2 apache2-utils apache2.2-bin apache2-common
sudo apt-get purge apache2 apache2-utils apache2.2-bin apache2-common
sudo apt-get autoremove
whereis apache2
sudo rm -rf /etc/apache2
whereis apache2
remove apache2 packages
sudo apt-get purge apache2 apache2-utils apache2-bin apache2.2-common
sudo apt-get purge 'php*'
sudo apt-get purge php7.*
sudo apt-get autoclean
sudo apt-get autoremove
sudo apt-get remove dbconfig-php
sudo apt-get remove –purge mysql*
sudo apt-get purge mysql*
sudo apt-get autoremove.
sudo apt-get autoremove
udo apt-get autoclean
sudo apt-get autoclean
sudo apt-get remove dbconfig-php
clear
sudo apt-get install apache2
whereis apache2
dpkg --get-selections | grep apache
sudo apt-get remove libapache2-mod-php
sudo dpkg -i --force-overwrite /var/cache/apt/archives/udev_237-3ubuntu10.9_amd64.deb
whereis apache2
sudo dpkg -i --force-overwrite /usr/sbin/apache2 /usr/share/apache2 / usr/share/man/man8/apache2.8.gz
sudo dpkg -i --force-overwrite /usr/sbin/apache2
sudo dpkg -i --force-overwrite /usr/sbin/apache2 /usr/share/apache2 
sudo dpkg --configure -a
sudo apt-get update –fix-missing
sudo dpkg –configure -a
sudo apt-get remove libapache2-mod-php7.0
sudo apt-get remove libapache2-mod-php7.4
sudo apt-get clean
sudo apt-get install -f
sudo dpkg --configure -a
sudo apt --fix-broken install
sudo apt reinstall
sudo dpkg --configure --force-overwrite -a
sudo apt-get clean
sudo apt-get purge mysql*
sudo apt-get update
sudo apt-get install -f
sudo apt-get purge mysql*
sudo apt-get autoremove
sudo apt-get update –fix-missing
sudo apt-get install -f
E: Sub-process /usr/bin/dpkg returned an error code (1)
sudo dpkg --configure -a
sudo apt-get install -f
sudo apt-get purge mysql-server mysql-community-server
sudo apt-get autoclean && sudo apt-get clean && sudo apt-get update
sudo apt-get upgrade
sudo apt-get install mysql-server and mysql-community-server
whereis apache2
clear
sudo apt-get remove –purge php*
sudo apt-get purge php*
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get remove dbconfig-php
sudo apt-get dist-upgrade.
sudo apt-get dist-upgrade
dpkg --purge mysql-server
sudo dpkg --purge mysql-server
sudo dpkg --purge php*
dpkg -i google-chrome-stable_current_i386.deb
sudo dpkg -i google-chrome-stable_current_i386.deb
sudo dpkg -i apache2
sudo dpkg -i apache2.deb
$sudo cp /etc/apache2/httpd.conf /etc/apache2/httpd-backup.conf
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:ondrej/apache2
sudo apt-get update
sudo apt-get upgrade
sudo apt-get purge apache2-data
sudo apt-get install apache2
clear
sudo apt install php libapache2-mod-php
sudo systemctl stop apache2.service
sudo systemctl start apache2.service
sudo systemctl enable apache2.service
sudo apt-get install mariadb-server mariadb-client
sudo systemctl stop mariadb.service
sudo systemctl start mariadb.service
sudo systemctl enable mariadb.service
sudo systemctl enable mariadb
sudo systemctl start mariadb
clear
sudo systemctl start mariadb
sudo systemctl stop mariadb
sudo systemctl restart mariadb
cd /var/lib/mysql
ls
rm -r *
cd /var/lib/mysql
sudo apt-get install software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo add-apt-repository 'deb [arch=amd64,arm64,ppc64el] http://mariadb.mirrors.ovh.net/MariaDB/repo/10.3/ubuntu bionic main'
sudo apt update
sudo apt upgrade
sudo apt install mariadb-server
sudo systemctl stop mariadb.service
sudo systemctl start mariadb.service
clear
sudo systemctl stop mariadb
echo "/usr/sbin/mysqld { }" | sudo tee /etc/apparmor.d/usr.sbin.mysqld
sudo apparmor_parser -v -R /etc/apparmor.d/usr.sbin.mysqld
wget -c https://repo.mysql.com//mysql-apt-config_0.8.13-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.13-1_all.deb 
sudo apt-get install mysql-server
sudo mysql_secure_installation
sudo systemctl status mysql
clear
sudo apt install mysql-server
sudo systemctl status mysql
clear
sudo apt-get install mariadb-server mariadb-client
systemctl status mysql
sudo systemctl start mysql
sudo systemctl enable mysql
sudo mysql_secure_installation
sudo /etc/init.d/mysql stop
sudo /etc/init.d/mysql start
mysql -u root -p 
mkdir -p /var/run/mysqld && chown mysql:mysql /var/run/mysqld
sudo su
mkdir -p /var/run/mysqld && chown mysql:mysql /var/run/mysqld
chown -R mysql /var/run/mysqld
chown -R mysql /var/lib/mysql
clear
sudo systemctl enable mysql
clear
sudo apt update
sudo apt upgrade
sudo ufw allow ssh
sudo ufw allow 80
sudo ufw allow 443
sudo ufw enable
sudo systemctl status apache2
sudo apt install php7.4 php7.4-mysql php-common php7.4-cli php7.4-json php7.4-common php7.4-opcache libapache2-mod-php7.4
sudo apt install php7.4
php --version
sudo systemctl restart apache2
echo '<?php phpinfo(); ?>' | sudo tee -a /var/www/html/phpinfo.php > /dev/null
sudo apt install mariadb-server mariadb-client
sudo systemctl status mariadb
mysqld --print-defaults
$ sudo systemctl stop apparmor.service
sudo systemctl stop apparmor.service
sudo update-rc.d -f apparmor remove
sudo apt-get remove --purge mysql-server mysql-client mysql-common
sudo systemctl status mariadb
sudo apt-get remove mariadb-server
sudo apt-get remove --auto-remove mariadb-server
sudo apt-get purge mariadb-server
sudo apt-get purge --auto-remove mariadb-server
clear
sudo apt install mariadb-server mariadb-client
sudo systemctl status mariadb
sudo apt-get remove --purge mysql*
sudo apt-get purge mysql*
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get remove dbconfig-mysql
sudo apt-get dist-upgrade
sudo apt-get update
clear
sudo apt-get install git -y
clear
git --version
git config --global user.name ""ishantusrathe
git config --global user.name "ishantusrathe
git config --global user.name "ishantusrathe"
git config --global user.email "ishantusrethe399@gmail.com"
git config --list
pwd
ls -a
ls -al
gedit .gitconfig
mkdir git_workspace
cd git workspace
cd git workspace/
cd git_workspace
git add *
cd Desktop
cd /home/Desktop
cd /Desktop
cd ~/Desktop
cd Home
cd /home
ls
cd 
sudo chown -R $USER: ~
ls
git init
