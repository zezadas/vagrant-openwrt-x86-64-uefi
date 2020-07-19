Inspired on mcandre/vagrant-openwrt-make this is a vagrant recipe for x86-64 openwrt running on KVM with UEFI

make sure you have installed the packer image. check zezadas/packer-openwrt-x86-64-uefi for more information about the packeri.
make sure you have edk2 installed and check if libvirt.loader on Vagrantfile have the correct path
You may need libvirt plugin for vagrant, and that can be installed with the following command: vagrant plugin install vagrant-libvirt

run vagrant with:
vagrant up --provider=libvirt

TODO:
 - have better README
