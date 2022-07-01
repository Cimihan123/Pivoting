FROM phusion/baseimage:master

RUN apt update -y

RUN apt install python3-pip -y

WORKDIR /opt

RUN apt install wget -y

RUN wget "https://master.dl.sourceforge.net/project/sar2html/sar2html-4.0.0.tar.gz?viasf=1"

RUN tar -xvf *

WORKDIR /opt/sar2html-4.0.0/

RUN pip3 install -r requirements.txt

CMD bash -c "./startWeb"

