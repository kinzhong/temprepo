#!/bin/bash

sudo cp ~/elasticsearch/certs/ca/ca.crt /etc/ssl/certs/elasticsearch-ca.crt
sudo cp ~/elasticsearch/certs/ca/ca.crt /usr/local/share/ca-certificates/elasticsearch-ca.crt
sudo update-ca-certificates --fresh

