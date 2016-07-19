# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.ssh.insert_key = false 
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end
  config.vm.define "kafka" do |kafka|
    kafka.vm.box = "centos/7"
    kafka.vm.network "private_network", ip:"192.168.50.11"
    kafka.vm.network "forwarded_port", guest:2181, host:9081
    kafka.vm.network "forwarded_port", guest:9092, host:9092
    kafka.vm.hostname = "kafka"
    kafka.vm.provision "shell", path:"kafka_provision.sh"
  end
  config.vm.define "spark" do |spark|
    spark.vm.box = "centos/7"
    spark.vm.network "private_network", ip:"192.168.50.12"
    spark.vm.network "forwarded_port", guest:8080, host:8080
    spark.vm.hostname = "spark"
    spark.vm.provision "shell", path:"spark_provision.sh"
  end
  config.vm.define "heron" do |heron|
    heron.vm.box = "centos/7"
    heron.vm.network "private_network", ip:"192.168.50.13"
    heron.vm.network "forwarded_port", guest:8080, host:8080
    heron.vm.hostname = "heron"
    heron.vm.provision "shell", path:"heron_provision.sh"
  end
  config.vm.define "apex" do |apex|
    apex.vm.box = "centos/7"
    apex.vm.network "private_network", ip:"192.168.50.14"
    apex.vm.network "forwarded_port", guest:8080, host:8080
    apex.vm.hostname = "apex"
    apex.vm.provision "shell", path:"apex_provision.sh"
  end
  config.vm.define "samza" do |samza|
    samza.vm.box = "centos/7"
    samza.vm.network "private_network", ip:"192.168.50.15"
    samza.vm.network "forwarded_port", guest:8080, host:8080
    samza.vm.hostname = "samza"
    samza.vm.provision "shell", path:"samza_provision.sh"
  end
  config.vm.define "flink" do |flink|
    flink.vm.box = "centos/7"
    flink.vm.network "private_network", ip:"192.168.50.16"
    flink.vm.network "forwarded_port", guest:8080, host:8080
    flink.vm.hostname = "flink"
    flink.vm.provision "shell", path:"flink_provision.sh"
  end
end
