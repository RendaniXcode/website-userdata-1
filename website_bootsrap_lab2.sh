#!/bin/bash
# Make sure we have all updates
sudo apt-get update -y

# Install Apache
sudo apt-get install -y apache2

# Install Unzip
sudo apt-get install -y unzip

# Download the website from S3
wget https://bpsdynamic.s3.eu-west-1.amazonaws.com/website.zip -P /var/www/html/

# Unzip the website
unzip /var/www/html/website.zip -d /var/www/html/

# Restart Apache to pick up new config
sudo service apache2 restart
