#! /bin/bash
#yum install -y java-1.8.0-openjdk-devel.x86_64
#cd /opt
#wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.80/bin/apache-tomcat-9.0.80.tar.gz
#tar -xvf apache-tomcat-9.0.80.tar.gz
#mv apache-tomcat-9.0.80 tomcat
#cd tomcat
#chmod 777 webapps
#cd bin
#./startup.sh
cd /opt/tomcat/webapps/manager/META-INF
sed '/Valve/d' context.xml
#sed '/allow/d' context.xml
#cd /opt/tomcat/conf
#sed '/^</tomcat-users>=.*/b <role rolename="manager-gui"/>
#                            <role rolename="manager-script"/>
#                            <user username="bobby" password="bobby" roles="manager-gui, manager-script"/>' tomcat-users.xml

