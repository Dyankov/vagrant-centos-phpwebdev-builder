# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  # Based on Cent OS 7
  config.vm.box = "chef/centos-7.0"

  # Run the bootstraping script
  config.vm.provision "shell", path: "./bootstrap/bootstrap.sh"

  # Move files
  config.vm.provision "file", source: "./bootstrap/files/bashrc", destination: "~/.bashrc"
  config.vm.provision "file", source: "./bootstrap/files/bash_aliases", destination: "~/.bash_aliases"

end