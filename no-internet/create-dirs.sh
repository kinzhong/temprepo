#!/bin/sh

#Creates Directories with correct permissions
mkdir ~/elasticsearch
sudo chmod g+rwx ~/elasticsearch
sudo chgrp 0 ~/elasticsearch

mkdir ~/elasticsearch/certs
sudo chmod g+rwx ~/elasticsearch/certs
sudo chgrp 0 ~/elasticsearch/certs

mkdir ~/elasticsearch/data01
sudo chmod g+rwx ~/elasticsearch/data01
sudo chgrp 0 ~/elasticsearch/data01

mkdir ~/elasticsearch/data02
sudo chmod g+rwx ~/elasticsearch/data02
sudo chgrp 0 ~/elasticsearch/data02

mkdir ~/elasticsearch/data03
sudo chmod g+rwx ~/elasticsearch/data03
sudo chgrp 0 ~/elasticsearch/data03

#Creates certs
sudo docker-compose -f create-certs.yml run --rm create_certs

#Install elasticsearch CA’s certificate on host
sudo cp ~/elasticsearch/certs/ca/ca.crt /etc/ssl/certs/elasticsearch-ca.crt
sudo cp ~/elasticsearch/certs/ca/ca.crt /usr/local/share/ca-certificates/elasticsearch-ca.crt
sudo update-ca-certificates --fresh

#Runs elasticsearch container
sudo docker-compose up -d

#Run test
echo "Please run the following tests:"
echo 'curl -u elastic:password https://172.17.0.1:9200/_cluster/health?pretty"'
echo 'curl -u elastic:password https://localhost:9200/_cluster/health?pretty"'

