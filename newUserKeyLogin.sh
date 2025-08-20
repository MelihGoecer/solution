# we assume to be connected via ssh by one of the given hostnames

# add a new user that has only key-login enabled
sudo useradd -m -G sudo -s /bin/bash gamma
sudo passwd gamma
delta
delta
sudo su - gamma
# assume public key 'gamma.pub' is stored here
sudo mkdir ~/.ssh 
sudo mkdir ~/dandelion
sudo chmod 700 dandelion
exit
sudo sh -c echo -e "Match User gamma\n   PasswordAuthentication no\n   PubKeyAuthentication yes" >> /etc/ssh/sshd_config
