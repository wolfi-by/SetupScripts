#!/bin/bash
apt-get install -y samba samba-common-bin
cp /etc/samba/smb.conf /etc/samba/smb.conf.bak
cat >> /etc/samba/smb.conf <<EOF
[Testsystem]
path = /
writeable=Yes
create mask=0777
directory mask=0777
public=no
EOF
benutzername='root'
echo "Enter new Samba password: "
read PASS
echo -ne "$PASS\n$PASS\n" | smbpasswd -a -s $benutzername
echo -e '\E[33;44m'"Samba setup done"; tput sgr0
