#!/bin/bash

# Update apt-get
sudo apt-get update

# Add Nodesource
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -

# Installs
sudo apt-get -y install \
git \
nodejs

# Google Cloud Install
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

sudo apt-get -y install apt-transport-https ca-certificates gnupg

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

sudo apt-get update && sudo apt-get -y install google-cloud-sdk

. ./node-pkg-installs.sh

