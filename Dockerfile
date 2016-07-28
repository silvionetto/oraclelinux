FROM oracle/oraclelinux

MAINTAINER Silvio Netto <silvio.netto@gmail.com>

ADD oraclelinux /oraclelinux
RUN chmod +x /oraclelinux/setup.sh
RUN /oraclelinux/setup.sh
