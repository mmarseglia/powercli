# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # use the opentable windows 2012r2 box
  config.vm.box = "opentable/win-2012r2-standard-amd64-nocm"

  # configure port forwarding for rdp
  config.vm.network :forwarded_port, guest: 3389, host: 3389, id: "rdp", auto_correct: true

  # install chocolatey and upgrade powershell
  config.vm.provision "shell", path: "provision/install_chocolatey.ps1"

  # upgrade powershell
  config.vm.provision "shell", path: "provision/upgrade_powershell.ps1"

  # install powercli
  config.vm.provision "shell", path: "provision/install_powercli.ps1"

  # install script analyzer
  #config.vm.provision "shell", path: "provision/install_psscriptanalyzer.ps1"
end