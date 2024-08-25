#!/bin/bash
apt-get update
apt-get install -y apache2
cp /vagrant/000-default.conf /etc/apache2/sites-available/000-default.conf
cp -r /vagrant/app/* /var/www/html/
echo "AddDefaultCharset UTF-8" >> /etc/apache2/conf-available/charset.conf
a2enconf charset
systemctl restart apache2