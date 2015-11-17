# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "elastic-search.local"
  config.vm.network "private_network", ip: "192.168.33.25"

  config.vm.provider "virtualbox" do |v|
    v.name = "Elastic Search"
    v.memory = 2048
    v.cpus = 1
  end

  config.vm.provision :shell, :path => "bootstrap.sh"

  config.vm.network :forwarded_port, guest: 9200, host: 9200
end

