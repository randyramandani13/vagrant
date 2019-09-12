#!/bin/sh

echo "mulai Provisioning"

echo "software source dan repository"
cp /vagrant/config/sources.list /etc/apt/sources.list
cp /vagrant/config/environment /etc/environment

echo "tambah repository nginx"
add-apt-repository -y ppa:nginx/stable

apt-get update
apt-get upgrade -y
apt-get dist-upgrade -y

echo "Instalasi nginx"
apt-get install -y nginx