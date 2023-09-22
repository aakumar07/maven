#! /bin/bash
yum install -y java-1.8.0-openjdk-devel.x86_64
cd /opt
wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
tar -xvf latest-unix.tar.gz
mv nexus-3/* nexus3
chown -R ec2-user:ec2-user nexus3 sonatype-work
cd /opt/nexus3/bin/
echo run_as_user="ec2-user" >> nexus.rc
ln -s /opt/nexus3/bin/nexus /etc/init.d/nexus
cd /etc/init.d/
chkconfig --add nexus
chkconfig nexus on
service nexus start
systemctl start nexus

