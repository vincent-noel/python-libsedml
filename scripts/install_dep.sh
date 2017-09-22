#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install -y subversion git wget \
			g++ python-dev python-setuptools swig cmake \
			zlib1g-dev libxml2-dev libbz2-dev \
			libcurl4-openssl-dev


wget https://cmake.org/files/v3.9/cmake-3.9.3-Linux-x86_64.tar.gz
tar -zxf  cmake-3.9.3-Linux-x86_64.tar.gz -C /opt
mv /usr/bin/cmake /usr/bin/cmake_old
ln -s /opt/cmake-3.9.3-Linux-x86_64/bin/cmake /usr/bin

SWIG_VERSION=$1
# Forcing swig_version to $SWIG_VERSION

apt-get install -y libpcre3-dev
wget https://downloads.sourceforge.net/project/swig/swig/swig-${SWIG_VERSION}/swig-${SWIG_VERSION}.tar.gz
tar -zxf swig-${SWIG_VERSION}.tar.gz
cd swig-${SWIG_VERSION}
./configure
make
make install
cd ..
rm /usr/bin/swig
ln -s /usr/local/bin/swig /usr/bin/
