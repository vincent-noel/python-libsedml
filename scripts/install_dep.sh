#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install -y subversion git wget \
			g++ python-dev python-setuptools swig cmake \
			zlib1g-dev libxml2-dev libbz2-dev \
			libcurl4-openssl-dev


# Installing cmake update if cmake version < 3.0.2
currentver="$(cmake --version | head -n1 | cut -d" " -f 3)"
requiredver="3.0.2"
if [ "$(printf "$requiredver\n$currentver" | sort -V | head -n1)" == "$requiredver" ]; then
    wget https://cmake.org/files/v3.8/cmake-3.8.2-Linux-x86_64.tar.gz
    tar -zxf  cmake-3.8.2-Linux-x86_64.tar.gz -C /opt
    mv /usr/bin/cmake /usr/bin/cmake_old
    ln -s /opt/cmake-3.8.2-Linux-x86_64/bin/cmake /usr/bin
fi

