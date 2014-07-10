#!/bin/bash

apt-get install git software-properties-common openssl -y

apt-add-repository ppa:rquillo/ansible -y
apt-get update
apt-get install ansible -y

cd

sudo -u jamalex /usr/bin/ssh-keygen

echo "Register the following key on GitHub to proceed:"
cat ~/.ssh/id_rsa.pub
read

sudo -u jamalex git clone git@github.com:jamalex/ansible-config.git

cd ansible-config
ansible-playbook -i hosts system.yml

chown jamalex:jamalex -R /home/jamalex/.ansible
