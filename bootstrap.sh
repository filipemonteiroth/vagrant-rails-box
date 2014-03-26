#!/usr/bin/env bash

echo "Y" | sudo apt-get install curl
\curl -sSL https://get.rvm.io | bash -s stable --ruby

#Installing mysql
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get -y install mysql-server mysql-client libmysqlclient-dev

#installing git
echo "Y" | sudo apt-get install git-core

#installing gems
gem install rails --no-ri --no-rdoc
gem install bundler

#Installing nodejs as javascript runtime
echo "Y" | sudo apt-get install nodejs
