# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # use the opentable windows 2012r2 box
  config.vm.box = "opentable/win-2012r2-standard-amd64-nocm"

  # configure port forwarding for rdp
  config.vm.network :forwarded_port, guest: 3389, host: 3389, id: "rdp", auto_correct: true

  # install powercli
  config.vm.provision "shell", path: "provision/install_powercli.ps1"
end