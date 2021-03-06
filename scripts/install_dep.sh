#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install -y subversion git wget \
			g++ python-dev python-setuptools swig cmake \
			zlib1g-dev libxml2-dev libbz2-dev \
			libcurl4-openssl-dev libpcre3-dev

# Installing cmake update if cmake version < 3.0.2
currentver="$(cmake --version | head -n1 | cut -d" " -f 3)"
requiredver="3.0.2"
if [ "$(printf "$requiredver\n$currentver" | sort -V | head -n1)" != "$requiredver" ]; then
    wget https://cmake.org/files/v3.8/cmake-3.8.2-Linux-x86_64.tar.gz
    tar -zxf  cmake-3.8.2-Linux-x86_64.tar.gz -C /opt
fi

# Installing swig
currentver="$(swig -version | head -n2 | tail -n1 | cut -d" " -f3)"
printf "> Swig version : $currentver\n"
min_version="1.3.37"
max_version="3.0.9"
if [ "$(printf "$min_version\n$currentver" | sort -V | head -n1)" == "$currentver" ] || [ "$(printf "$max_version\n$currentver" | sort -V | head -n1)" != "$currentver" ]
then
    wget https://downloads.sourceforge.net/project/swig/swig/swig-3.0.8/swig-3.0.8.tar.gz
    tar -zxf swig-3.0.8.tar.gz
    cd swig-3.0.8
    ./configure --exec-prefix=/usr/local/share/swig/3.0.8/
    make
    make install
    cd ..
fi
