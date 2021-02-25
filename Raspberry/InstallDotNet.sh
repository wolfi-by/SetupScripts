#!/bin/bash
cd /tmp
wget https://download.visualstudio.microsoft.com/download/pr/cd11b0d1-8d79-493f-a702-3ecbadb040aa/d24855458a90944d251dd4c68041d0b7/dotnet-sdk-5.0.103-linux-arm.tar.gz
mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-5.0.103-linux-arm64.tar.gz -C $HOME/dotnet
export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet

cat > ~/.bashrc << EOF
export PATH=$PATH:$HOME/dotnet
DOTNET_ROOT=$HOME/dotnet
EOF

apt-get install -y libgdiplus libc6 libgcc1 libgssapi-krb5-2 libicu63 libssl1.1 libstdc++6 zlib1g net-tools iw hostapd dnsmasq iptables-persistent
