# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.define "dmtcp1" do |dmtcp1|
    dmtcp1.vm.box = "bento/centos-6.8"
    dmtcp1.vm.network "private_network", ip: "192.168.1.2"
    dmtcp1.vm.hostname = "dmtcp1"
#    dmtcp1.vm.provider "virtualbox" do |v|
#      file_to_disk = "./dmtcp1_d0.vdi"
#      v.customize ['createhd', '--filename', file_to_disk, '--size', 256]
#      v.customize ['storageattach', :id, '--storagectl', 'IDE Controller', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', file_to_disk]
#    end
  end

  config.vm.define "dmtcp2" do |dmtcp2|
    dmtcp2.vm.box = "bento/centos-6.8"
    dmtcp2.vm.network "private_network", ip: "192.168.1.3"
    dmtcp2.vm.hostname = "dmtcp2"
#    dmtcp2.vm.provider "virtualbox" do |v|
#      file_to_disk = "./dmtcp2_d0.vdi"
#      v.customize ['createhd', '--filename', file_to_disk, '--size', 256]
#      v.customize ['storageattach', :id, '--storagectl', 'IDE Controller', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', file_to_disk]
#    end
  end
#  config.vm.define "dmtcp3" do |dmtcp3|
#    dmtcp3.vm.box = "bento/centos-6.8"
#    dmtcp3.vm.network "private_network", ip: "192.168.1.3"
#    dmtcp3.vm.hostname = "dmtcp3"
#    dmtcp3.vm.provider "virtualbox" do |v|
#      file_to_disk = "./dmtcp3_d0.vdi"
#      v.customize ['createhd', '--filename', file_to_disk, '--size', 256]
#      v.customize ['storageattach', :id, '--storagectl', 'IDE Controller', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', file_to_disk]
#    end
#  end
#  config.vm.define "dmtcp4" do |dmtcp4|
#    dmtcp4.vm.box = "bento/centos-6.8"
#    dmtcp4.vm.network "private_network", ip: "192.168.1.4"
#    dmtcp4.vm.hostname = "dmtcp4"
#    dmtcp4.vm.provider "virtualbox" do |v|
#      file_to_disk = "./dmtcp4_d0.vdi"
#      v.customize ['createhd', '--filename', file_to_disk, '--size', 256]
#      v.customize ['storageattach', :id, '--storagectl', 'IDE Controller', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', file_to_disk]
#    end
#  end
  config.vm.provision "packages", type: "shell",  path: "packages.sh"
#  config.vm.provision :reload
  config.vm.provision "dmtcp", type: "shell", path: "dmtcp.sh"
  config.vm.provision "dmtcp_path", type: "shell", path: "dmtcp_path.sh"
  config.vm.provision "test_progs", type: "shell", path: "test_progs.sh"

  
  #config.vm.define "dmtcp2" do |dmtcp2|
  #  dmtcp2.vm.box = "bento/centos-6.6"
  #  dmtcp2.vm.hostname = "dmtcp2"
  #end

  #config.vm.define "dmtcp3" do |dmtcp3|
  #  dmtcp3.vm.box = "bento/centos-6.6"
  #  dmtcp3.vm.hostname = "zfs3"
  #end
  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL
end
