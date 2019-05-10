#!/usr/bin/env bash

# sudo yum -y update
sudo yum -y install  nano
sudo yum -y install wget

wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm

sudo yum -y install mysql-server

sudo yum -y install mysql-devel;

# install python development requirements
pip install -e '.[devel]'
