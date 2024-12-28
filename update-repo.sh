#!/bin/bash

# 删除原有的软件源
sudo rm -f /etc/apt/sources.list

# 添加最新的 Ubuntu 24.04 (Noble Numbat) 官方软件源
echo "deb http://archive.ubuntu.com/ubuntu/ jammy main restricted universe multiverse" | sudo tee /etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ jammy-updates main restricted universe multiverse" | sudo tee -a /etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ jammy-security main restricted universe multiverse" | sudo tee -a /etc/apt/sources.list
echo "deb http://archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse" | sudo tee -a /etc/apt/sources.list
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
echo "deb http://apt.llvm.org/focal/ llvm-toolchain-focal-19 main" | sudo tee /etc/apt/sources.list.d/llvm-toolchain.list

# 添加 Ubuntu 官方 GPG 密钥
curl -fsSL http://archive.ubuntu.com/ubuntu/project/ubuntu-archive-keyring.gpg | sudo gpg --dearmour -o /etc/apt/trusted.gpg.d/ubuntu.gpg
