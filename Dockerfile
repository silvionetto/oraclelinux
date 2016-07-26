FROM oracle/oraclelinux

MAINTAINER Silvio Netto <silvio.netto@gmail.com>

ADD oracle /oracle
RUN chmod +x /oracle/setup.sh
RUN /oracle/setup.sh
