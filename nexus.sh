#! /bin/bash

cd /etc/init.d/
chkconfig --add nexus
chkconfig nexus on

systemctl start nexus
