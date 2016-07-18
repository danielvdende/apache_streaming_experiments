#!/bin/bash

sudo yum -y update

# install java
sudo yum -y install java-1.7.0-openjdk
sudo yum -y install wget

# get flink
wget http://apache.cs.uu.nl/flink/flink-1.0.3/flink-1.0.3-bin-hadoop27-scala_2.11.tgz
tar -xzf flink-1.0.3-bin-hadoop27-scala_2.11.tgz
