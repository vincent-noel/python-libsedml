#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install -y subversion git \
			g++ python-dev cmake swig \
			zlib1g-dev libxml2-dev libbz2-dev \
			libcurl4-openssl-dev