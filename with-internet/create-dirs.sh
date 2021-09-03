#!/bin/sh

#Creates Directories with correct permissions
cd ~
mkdir elasticsearch
sudo chmod g+rwx elasticsearch
sudo chgrp 0 elasticsearch

mkdir elasticsearch/certs
sudo chmod g+rwx elasticsearch/certs
sudo chgrp 0 elasticsearch/certs

mkdir elasticsearch/data
sudo chmod g+rwx elasticsearch/data
sudo chgrp 0 elasticsearch/data

cd temprepo

#Creates certs
sudo docker-compose -f create-certs.yml run --rm create_certs

#Install elasticsearch CA’s certificate on host
sudo cp ~/elasticsearch/certs/ca/ca.crt /etc/ssl/certs/elasticsearch-ca.crt
sudo cp ~/elasticsearch/certs/ca/ca.crt /usr/local/share/ca-certificates/elasticsearch-ca.crt
sudo update-ca-certificates --fresh

#Runs elasticsearch container
sudo docker-compose up -d

#Run test
curl -u elastic:password -X GET "https://localhost:9200/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "query": {
    "match_all": { }
  },
  "sort": [
    {
      "@timestamp": "desc"
    }
  ]
}
'

