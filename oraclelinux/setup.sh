#!/bin/bash

yum update -y &&

# System Requirements
yum install -y compat-libcap1 &&
yum install -y gcc &&
yum install -y gcc-c++ &&
yum install -y glibc &&
yum install -y glibc-devel &&
yum install -y libgcc &&
yum install -y libstdc++ &&
yum install -y libstdc++ &&
yum install -y libaio &&
yum install -y libaio-devel &&
yum install -y sysstat &&

# ODBC Driver
yum install -y unixODBC &&
yum install -y unixODBC-devel&&

yum install -y tar
yum install -y less
yum install -y sudo

source /root/.bash_profile

groupadd oinstall
groupadd dba
useradd -g oinstall oracle
usermod -a -G dba oracle
mkdir -p /oracledb/app/
chown -R oracle:oinstall /oracledb/app/
chmod -R 775 /oracledb/app/

mkdir -p /oracledb/tmp/
chmod a+wr /oracledb/tmp

unzip V46095-01_1of2.zip
unzip V46095-01_2of2.zip 
rm V46095-01_1of2.zip V46095-01_2of2.zip
