FROM phusion/baseimage:master

LABEL maintainer="sauman"
LABEL name="attacker"

RUN apt update -y

RUN apt install -y nmap

RUN apt install -y iputils-ping

RUN apt install -y net-tools

RUN apt install -y iproute2

