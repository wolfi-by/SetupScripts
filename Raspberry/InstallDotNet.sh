#!/bin/bash
cd /tmp
mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-5.0.103-linux-arm64.tar.gz -C $HOME/dotnet
export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet
touch ~/.bashrc
echo "export PATH=$PATH:$HOME/dotnet" >> ~/.bashrc
echo "export DOTNET_ROOT=$HOME/dotnet" >> ~/.bashrc
apt-get install -y libgdiplus libc6 libgcc1 libgssapi-krb5-2 libicu63 libssl1.1 libstdc++6 zlib1g net-tools iw hostapd dnsmasq iptables-persistent
