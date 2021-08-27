#!/bin/sh
sudo docker pull splunk/splunk:latest
sudo docker run -d -p 8000:8000 -p "8089:8089" -e "SPLUNK_START_ARGS=--accept-license" -e "SPLUNK_PASSWORD=password" --name splunk splunk/splunk:latest
