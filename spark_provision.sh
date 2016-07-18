#!/bin/bash

sudo yum -y update

# install java
sudo yum -y install java-1.8.0-openjdk
sudo yum -y install wget

# get spark
wget http://d3kbcqa49mib13.cloudfront.net/spark-1.6.2-bin-hadoop2.6.tgz
tar -xzf spark-1.6.2-bin-hadoop2.6.tgz
