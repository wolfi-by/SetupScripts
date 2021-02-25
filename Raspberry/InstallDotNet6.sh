#!/bin/bash
cd /tmp
wget https://download.visualstudio.microsoft.com/download/pr/3b62cfcf-589e-43b3-993b-517c70c93a22/0ecae846884376fecc5de8a4f6d6c927/dotnet-sdk-6.0.100-preview.1.21103.13-linux-arm.tar.gz
mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-6.0.100-preview.1.21103.13-linux-arm.tar.gz -C $HOME/dotnet
export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet


cat > ~/.bashrc << EOF
export PATH=$PATH:$HOME/dotnet
DOTNET_ROOT=$HOME/dotnet
EOF

apt-get install -y libgdiplus libc6 libgcc1 libgssapi-krb5-2 libicu63 libssl1.1 libstdc++6 zlib1g net-tools iw hostapd dnsmasq iptables-persistent


