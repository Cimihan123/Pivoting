FROM phusion/baseimage:master

LABEL maintainer="sauman"

LABEL name="attacker"

RUN apt update -y

RUN apt install -y nmap

RUN apt install -y iputils-ping

RUN apt install -y net-tools

RUN apt install -y iproute2

RUN apt install -y proxychains4

RUN apt install hydra -y

RUN apt install ncat -y

RUN curl https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Leaked-Databases/rockyou-05.txt -o /home/rock.txt
