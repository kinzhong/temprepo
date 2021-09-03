#!/bin/sh
sudo sysctl -w vm.max_map_count=262144
echo "vm.max_map_count=262144" >> /etc/sysctl.conf
grep vm.max_map_count /etc/sysctl.conf
su ubuntu

