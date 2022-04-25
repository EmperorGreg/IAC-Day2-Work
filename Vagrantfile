# -*- mode: ruby -*- 
# vi: set ft=ruby :

required_plugins = ["vagrant-hostsupdater"]
required_plugins.each do |plugin| 
    exec "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end
Vagrant.configure("2") do |config| 
  config.vm.define "iacday2" do |iacday2| 
    iacday2.vm.box = "ubuntu/focal64"
    config.ssh.insert_key = false
    iacday2.vm.network :private_network, ip: "10.0.1.10"
    iacday2.vm.network "public_network", bridge: "en1: Wi-Fi (AirPort)"
    iacday2.vm.hostname = "iac-day2"
    iacday2.hostsupdater.aliases = ["iac-day2"]
    iacday2.vm.provision "shell", path: "script2.sh"
    iacday2.vm.provider "virtualbox" do |vb|
      vb.memory= 2048
      vb.cpus = 2
    end
  end
end