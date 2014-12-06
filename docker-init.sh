#!/bin/bash

mkdir -p /opt/air_sdk
cd /opt/air_sdk
wget http://airdownload.adobe.com/air/win/download/latest/AIRSDK_Compiler.zip
unzip AIRSDK_Compiler.zip
rm AIRSDK_Compiler.zip 
adduser --disabled-password --gecos "" air
echo 'export AIR_HOME=/opt/air_sdk' >> ~air/.bashrc 
echo 'export WINEDEBUG=fixme-all' >> ~air/.bashrc 

mkdir -p /opt/jdk
cd /opt/jdk
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u71-b14/jdk-7u71-linux-x64.tar.gz
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u71-b14/jdk-7u71-windows-i586.exe
tar xvzf jdk-7u71-linux-x64.tar.gz 
echo 'export JAVA_HOME=/opt/jdk/jdk1.7.0_71' >> ~air/.bashrc 
echo 'export PATH="$JAVA_HOME/bin:$PATH"' >> ~air/.bashrc 

su - air -c "wine /opt/jdk/jdk-7u71-windows-i586.exe"
rm /opt/jdk/jdk-7u71-linux-x64.tar.gz /opt/jdk/jdk-7u71-windows-i586.exe 
