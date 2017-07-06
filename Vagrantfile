# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "neko-neko/centos6-oracle-11g-XE"

  config.vm.network "forwarded_port", guest: 1521, host: 1521 # Oracle
  config.vm.network "forwarded_port", guest: 8080, host: 8080 # Tomcat Web
  config.vm.network "forwarded_port", guest: 8787, host: 8787 # Tomcat debug

  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "tomcat8oraxe"
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
     # Customize the amount of memory on the VM:
    vb.memory = "1024"
  end

  # Add tomcat puppet module to the VM before provisioning using puppet.
  config.vm.provision :shell do |shell|
    shell.inline = "puppet module install puppetlabs-tomcat --version 1.7.0"
  end

  # Puppet provisioning.
  config.vm.provision "puppet" do |puppet|
    # puppet.options = "--debug"
    puppet.environment_path  = "environments"
  end
end
