#!/bin/sh

#Creates Directories with correct permissions
mkdir ~/elasticsearch
sudo chmod g+rwx ~/elasticsearch
sudo chgrp 0 ~/elasticsearch

mkdir ~/elasticsearch/certs
sudo chmod g+rwx ~/elasticsearch/certs
sudo chgrp 0 ~/elasticsearch/certs

mkdir ~/elasticsearch/data04
sudo chmod g+rwx ~/elasticsearch/data04
sudo chgrp 0 ~/elasticsearch/data04

mkdir ~/elasticsearch/data05
sudo chmod g+rwx ~/elasticsearch/data05
sudo chgrp 0 ~/elasticsearch/data05

mkdir ~/elasticsearch/data06
sudo chmod g+rwx ~/elasticsearch/data06
sudo chgrp 0 ~/elasticsearch/data06
