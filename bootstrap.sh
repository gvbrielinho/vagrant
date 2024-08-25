#!/bin/bash
apt-get update
apt-get install -y apache2
cp /vagrant/000-default.conf /etc/apache2/sites-available/000-default.conf
cp -r /vagrant/app/* /var/www/html/
systemctl restart apache2