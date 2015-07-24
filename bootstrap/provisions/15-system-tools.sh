# Used to sync server time.
installPackage ntp

sudo systemctl start ntpd
sudo systemctl enable ntpd

# Vim
installPackage vim-enhanced

# Command line clipboard grabber
installPackage xclip

# A screen manager that supports multiple logins on one terminal
installPackage screen
