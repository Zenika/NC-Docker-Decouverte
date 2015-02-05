#!/bin/bash
sudo apt-get update
sudo apt-get install -y git
git clone https://github.com/Zenika/NC-Docker-Decouverte.git
sudo apt-get install -y htop qemu curl vim
sudo apt-get install -y qemu-kvm qemu-utils
curl -sSL https://get.docker.com/ | sh
