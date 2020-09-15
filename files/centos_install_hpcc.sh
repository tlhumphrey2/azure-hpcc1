#!/bin/bash
: <<'ENDUSAGE'
sudo install_hpcc.sh $path2platform
ENDUSAGE

path2platform=$1
echo "Inputted: path2platform=\"$path2platform\""
HPCCPlatform=`basename $path2platform`
echo "HPCCPlatform=\"$HPCCPlatform\""

#install hpcc
echo DEBUG: install hpcc
mkdir hpcc
cd hpcc
echo DEBUG: wget $path2platform
wget $path2platform

# Install dependences
echo DEBUG: wget https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/l/libbsd-0.8.3-1.el7.x86_64.rpm
wget https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/l/libbsd-0.8.3-1.el7.x86_64.rpm
echo DEBUG: yum install libbsd-0.8.3-1.el7.x86_64.rpm -y
yum install libbsd-0.8.3-1.el7.x86_64.rpm -y

echo DEBUG: yum install $HPCCPlatform -y
yum install $HPCCPlatform -y
