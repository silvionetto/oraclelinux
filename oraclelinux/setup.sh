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
yum install -y unixODBC-devel &&

# Tools
yum install -y tar
