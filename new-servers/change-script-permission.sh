#!/bin/sh
sed -i -e 's/\r$//' create-dirs.sh
chmod +x create-dirs.sh

sed -i -e 's/\r$//' sysconfig.sh
chmod +x sysconfig.sh

sed -i -e 's/\r$//' install-splunk.sh
chmod +x install-splunk.sh