#!/bin/bash

yum update &&
yum install binutils-2.20.51.0.2-5.11.el6 &&
yum install compat-libcap1-1.10-1 &&
yum install compat-libstdc++-33-3.2.3-69.el6 &&
yum install gcc-4.4.4-13.el6 &&
yum install gcc-c++-4.4.4-13.el6 && 
yum install glibc-2.12-1.7.el6 &&
yum install glibc-2.12-1.7.el6 &&
yum install glibc-devel-2.12-1.7.el6 &&
yum install libgcc-4.4.4-13.el6 &&
yum install libstdc++-4.4.4-13.el6 && 
yum install libstdc++-devel-4.4.4-13.el6 && 
yum install libaio-0.3.107-10.el6 &&
yum install libaio-devel-0.3.107-10.el6 &&
yum install sysstat-9.0.4-11.el6 

exit $?
