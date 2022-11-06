#!/usr/bin/bash


#Create postgresql user
sudo adduser --system postgres

#Change user postgres shell
sudo chsh -s /bin/bash postgres

#Create the file repository :
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'


#Import repo signing key:
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -


#Update package list
sudo apt-get update


#Install latest version of PostgreSQL
sudo apt-get -y install postgresql


#Run myappdb.sql script to crate user & database
psql -U postgres -f ./myappdb.sql -q #doesn"t work because pg_hba.conf file needs to be edited to allow remote login