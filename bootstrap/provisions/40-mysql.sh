# MySQL (MariaDB)
installPackage mariadb-server
installPackage mariadb
installPackage php56w-mysql
installPackage phpMyAdmin

sudo systemctl start mariadb
sudo systemctl enable mariadb.service

# SQLite
installPackage sqlite