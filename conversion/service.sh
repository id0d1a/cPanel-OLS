#!/bin/bash
while true; do
sysctl -p fs.enforce_symlinksifowner=1
systemctl stop httpd
systemctl disable httpd
cd /usr/local/lsws/configparse/
php service.php
done
