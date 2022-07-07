FROM phusion/baseimage:master

RUN apt update -y

RUN apt install ssh -y

RUN apt install iputils-ping -y

RUN apt install net-tools -y

RUN echo 'root:123456789' | chpasswd

RUN sed -i "s/#PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config

RUN sed -i "s/#PermitRootLogin yes/PermitRootLogin yes/g" /etc/ssh/sshd_config

CMD ["/usr/sbin/sshd", "-D"]
