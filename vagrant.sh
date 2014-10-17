!#/bin/bash



sudo yum -y install mysql mysql-server
sudo chkconfig --levels 235 mysqld on
sudo /etc/init.d/mysqld start
sudo yum -y install httpd
sudo chkconfig --levels 235 httpd on
sudo /etc/init.d/httpd start
sudo yum -y install php

sudo /etc/init.d/httpd restart

sudo yum -y install php-mysql
sudo yum -y install php-gd php-imap php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-mcrypt php-mssql php-snmp php-soap php-tidy curl curl-devel

/etc/init.d/httpd restart

sudo rpm --import http://dag.wieers.com/rpm/packages/RPM-GPG-KEY.dag.txt
sudo yum -y install http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
sudo yum -y install phpmyadmin
#vi /etc/httpd/conf.d/phpmyadmin.conf
#vi /usr/share/phpmyadmin/config.inc.php
#/etc/init.d/httpd restart