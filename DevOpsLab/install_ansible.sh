#!/bin/bash

## Update and upgrade the packages
sudo yum update -y

## Install pre-requisite packages
sudo yum install -y openssl-devel libffi-devel python-devel python-pip

## Install Ansible and Azure SDK via pip
sudo pip install ansible[azure]

## Create a credentials file to store azure credentials
## sudo mkdir ~/.azure
## sudo touch ~/.azure/credentials
