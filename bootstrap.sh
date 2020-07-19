#!/bin/sh

sudo opkg update &&
    sudo opkg install gcc wget libustream-openssl ca-certificates &&
    wget --directory-prefix /tmp https://ftp.gnu.org/gnu/make/make-4.2.tar.gz &&
    sudo opkg remove --autoremove wget libustream-openssl ca-certificates

sudo opkg upgrade tar grep &&
    tar xzvf /tmp/make-4.2.tar.gz &&
    rm /tmp/make-4.2.tar.gz &&
    sh -c 'cd make-4.2 && ./configure --prefix=/usr && sh build.sh && sudo ./make install' &&
    rm -rf make-4.2

    
#https://openwrt.org/docs/guide-user/luci/luci.essentials    
sudo opkg update
sudo opkg install opkg install luci  luci-ssl-openssl
sudo opkg install wpad
sudo opkg install kmod-iwlwifi iwlwifi-firmware-iwl7265d
sudo opkg install aircrack-ng


#TODO:
#luci-app-https-dns-proxy
#random mac
#configure port portforward on ssh
#apply qubeos hardening
#unmanage host interface so it gets DHCP from openwrt dnsmasq
#start VM on boot
#configure iptables
#get the libvirt command to build the VM with PCI pass through instead of using GUI virt-manager

