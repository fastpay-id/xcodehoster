#!/bin/bash
#Progammer : Kurniawan. admin@xcodetraining.com. xcode.or.id.
#Program ini dapat digunakan untuk personal ataupun komersial.
#X-code Media - xcode.or.id / xcode.co.id
echo -n "Masukkan nama domain : "
read domain
sudo cp support/subdomain.conf /etc/apache2/sites-available/$domain.conf 
sed -i "s/sample.xcodehoster.com/$domain/g" /etc/apache2/sites-available/$domain.conf
a2ensite $domain.conf
service apache2 restart