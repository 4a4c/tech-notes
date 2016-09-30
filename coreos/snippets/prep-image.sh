#This preps a VM image to be cloned. 
# Remove Machine ID
sudo rm /etc/machine-id
# Remove Host SSH Keys
sudo rm /etc/ssh/ssh_host_*
