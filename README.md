CentOS 7 PHP Web Dev Vagrant Box Builder
========================================

This tool is used to build and provion the base box used in https://github.com/dyankov91/centos-7.0-phpwebdev


# Managing Packages and Repos

All packages are `.sh` files inside `bootstrap/provisions` folder.

To add new provisions to the VM just create a new file in the `bootstrap/provisions` folder and list the commands needed to install the provision. Place number before the name of the file to set install priority. Files with smaller number are executed first.

In case you don't want some provision to be installed just rename the file NOT TO END ".sh" then it won't be installed. For example if don't wan't NodeJS, just rename the file 20-nodejs.sh to 20-nodejs.not and NodeJS won't be installed.

### Repos

In case you need to add specific yum repo to the VM you have to to add `*.repo` file inside the `bootstrap\yum-repos` folder.
Repos in this directory are going to be added to the VM and then you can install packages from them.

### Remove package or repo

Note that if the provision is allready installed you have to `vagrant destroy` the VM and then remove the unwanted (unnesesary) files and `vagrant up` again to remove the provision.

# TODO

* Now the server has only one PHP version installed 5.4. It is planned to support PHP 5.3, 5.5, 5.6 and 7
* Shell scipt for securing MySQL
* Shell script for building vhosts. Sites are defined in YAML file and sciprt build the vhosts, set sync and log folders, etc.
