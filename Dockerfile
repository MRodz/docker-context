FROM ubuntu:16.04

WORKDIR /context

ADD . /context

# bringing Ubuntu up to date
RUN apt-get clean &&\
    apt-get update &&\
    apt-get autoclean -y &&\
    apt-get autoremove -y &&\
    apt-get install -f -y apt-utils &&\
    apt-get install -y wget &&\
    apt-get install -y rsync &&\
    apt-get install -y locate

# install Ruby as prerequisite of ConTeXt
RUN	apt-get install -y ruby-full

# install ConTeXt
RUN wget http://minimals.contextgarden.net/setup/first-setup.sh &&\
    sh ./first-setup.sh --modules=all

# setting ConTeXt root
CMD . /context/tex/setuptex


