FROM oracle/oraclelinux:7.2

MAINTAINER Silvio Netto <silvio.netto@gmail.com>

RUN yum update -y && yum install -y \
compat-libcap1 \
gcc \
gcc-c++ \
glibc \
glibc-devel \
libgcc \
libstdc++ \
libaio \
libaio-devel \
sysstat \
unixODBC \
unixODBC-devel \
tar \
less \
sudo \
unzip

ADD oraclelinux /oraclelinux
RUN chmod +x /oraclelinux/setup.sh
RUN /oraclelinux/setup.sh