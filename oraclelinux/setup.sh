#!/bin/bash

mkdir -p /usr/local/java/
tar xvzf oraclelinux/jdk-8u102-linux-x64.tar.gz -C /usr/local/java/ &&
rm oraclelinux/jdk-8u102-linux-x64.tar.gz &&

echo “JAVA_HOME=/usr/local/java/jdk1.8.0_102” >> /root/.bash_profile
echo “export JAVA_HOME” >> /root/.bash_profile
echo “PATH=$PATH:$JAVA_HOME/bin” >> /root/.bash_profile

source /root/.bash_profile &&

groupadd oinstall &&
groupadd dba &&
useradd -g oinstall oracle &&
usermod -a -G dba oracle &&
mkdir -p /oracledb/app/ &&
chown -R oracle:oinstall /oracledb/app/ &&
chmod -R 775 /oracledb/app/ &&

mkdir -p /oracledb/tmp/ &&
chmod a+wr /oracledb/tmp &&

unzip oraclelinux/V46095-01_1of2.zip &&
unzip oraclelinux/V46095-01_2of2.zip &&
rm oraclelinux/V46095-01_1of2.zip &&
rm oraclelinux/V46095-01_2of2.zip

exit $?