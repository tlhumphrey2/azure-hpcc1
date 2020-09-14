#!/bin/bash
sshuser=`basename $ThisDir`
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

echo DEBUG: yum install $HPCCPlatform -y
yum install $HPCCPlatform -y
