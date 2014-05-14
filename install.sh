apt-add-repository ppa:rquillo/ansible -y
apt-get update
apt-get install ansible -y

ansible-playbook -i hosts system.yml