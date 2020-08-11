#!/bin/bash

## Set Locale
localectl set-locale LANG=en_US.UTF-8

## Update and upgrade the packages
sudo yum update -y

## Install pre-requisite packages
sudo yum install -y openssl-devel libffi-devel python2-devel 

## Install pip
sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python get-pip.py

## Install Ansible and Azure SDK via pip
sudo pip install ansible[azure]

## Create a credentials file to store azure credentials
## sudo mkdir ~/.azure
## sudo touch ~/.azure/credentials
