#!/bin/sh
sudo sysctl -w vm.max_map_count=655360
echo "vm.max_map_count=655360" >> /etc/sysctl.conf
#grep vm.max_map_count /etc/sysctl.conf
sed -i '/swap/s/^/#/' /etc/fstab
swapoff -a
echo "* - nofile 655360" >> /etc/security/limits.conf
echo "* - nproc 131072" >> /etc/security/limits.conf
sysctl -p
su ubuntu

