#!/bin/bash

sudo yum -y update

# install java
sudo yum -y install java-1.8.0-openjdk
sudo yum -y install wget

# get kafka
wget http://www-eu.apache.org/dist/kafka/0.10.0.0/kafka_2.11-0.10.0.0.tgz
tar -xzf kafka_2.11-0.10.0.0.tgz
cd kafka_2.11-0.10.0.0

# start zookeeper
nohup bin/zookeeper-server-start.sh config/zookeeper.properties > zookeeper.out &

# start kafka
nohup bin/kafka-server-start.sh config/server.properties > kafka.out &


# setup producer script
sudo yum -y install python-