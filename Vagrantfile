Vagrant.configure("2") do |config|
  config.vm.box = "openwrt"
  #config.vm.box_version = "0.0.1"
  config.ssh.shell = "/bin/ash"
  # Prepare for vagrant package
  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", type: "rsync", disabled: true

  config.vm.provision "shell", path: "bootstrap.sh"
  
  config.vm.provider :libvirt do |libvirt|
    libvirt.cpus = 1
    libvirt.loader = "/usr/share/edk2-ovmf/x64/OVMF.fd"
  end
end
