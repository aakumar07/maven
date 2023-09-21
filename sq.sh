#! /bin/bash

yum install -y java-1.8.0-openjdk-devel.x86_64
cd /opt
wget -O /etc/yum.repos.d/sonar.repo http://downloads.sourceforge.net/project/sonar-pkg/rpm/sonar.repo
yum install sonar -y
service sonar start

