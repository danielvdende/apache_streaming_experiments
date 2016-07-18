#!/bin/bash

sudo yum -y update

# install java
sudo yum -y install java-1.8.0-openjdk
sudo yum -y install wget

# get heron scripts
wget https://github.com/twitter/heron/releases/download/0.14.1/heron-api-install-0.14.1-centos.sh
wget https://github.com/twitter/heron/releases/download/0.14.1/heron-client-install-0.14.1-centos.sh
wget https://github.com/twitter/heron/releases/download/0.14.1/heron-tools-install-0.14.1-centos.sh

chmod +x heron-api-install-0.14.1-centos.sh
chmod +x heron-client-install-0.14.1-centos.sh
chmod +x heron-tools-install-0.14.1-centos.sh

./heron-client-install-0.14.1-centos.sh --user
export PATH=$PATH:/usr/local/bin
./heron-tools-install-0.14.1-centos.sh --user
./heron-api-install-0.14.1-centos.sh --user

