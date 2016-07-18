#!/bin/bash

sudo yum -y update

# install java
sudo yum -y install java-1.8.0-openjdk
sudo yum -y install git

git clone https://git.apache.org/samza-hello-samza.git hello-samza
cd hello-samza
git checkout latest

