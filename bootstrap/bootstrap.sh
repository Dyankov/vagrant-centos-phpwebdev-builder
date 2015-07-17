#!/bin/sh

# Update the VM
sudo yum -y update

# Include Shell Helper Functions
. /vagrant/bootstrap/shell/functions.sh

# Provisioning
PROVISIONS=/vagrant/bootstrap/provisions/*.sh
for provision in $PROVISIONS
do
    echo -e "\e[0;33mProcessing $(basename "$provision" .sh) provision...\e[0m"
    . $provision
done

# Availavable Sites
if [ ! -d /etc/httpd/sites-available ]; then
    sudo mkdir /etc/httpd/sites-available
fi

# Enabled Sites
if [ ! -d /etc/httpd/sites-enabled ]; then
    sudo mkdir /etc/httpd/sites-enabled
fi

# Move the apache config file
sudo cp /vagrant/bootstrap/files/httpd.conf /etc/httpd/conf/

# Restart the Apache so the changes can be applied.
sudo systemctl restart httpd.service