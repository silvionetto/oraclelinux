FROM oracle/oraclelinux

MAINTAINER Silvio Netto <silvio.netto@gmail.com>

ADD oracle /oracle
RUN /oracle/setup.sh
