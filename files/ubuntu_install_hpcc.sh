#!/bin/bash
ThisDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
sshuser=`basename $ThisDir`
: <<'ENDUSAGE'
sudo install_hpcc.sh $path2platform
ENDUSAGE

path2platform=$1
echo "Inputted: path2platform=\"$path2platform\""
HPCCPlatform=`basename $path2platform`
echo "HPCCPlatform=\"$HPCCPlatform\""

echo "DEBUG: Install platform's dependencies
echo DEBUG: apt-get install -f
apt-get install -f
echo DEBUG: apt-get install libicu-dev
apt-get install libicu-dev
echo DEBUG: apt-get install libboost-dev
apt-get install libboost-dev
echo DEBUG: apt-get install libxalan110
apt-get install libxalan110
echo DEBUG: apt-get install libxerces-c28
apt-get install libxerces-c28
echo DEBUG: apt-get install openssl
apt-get install openssl
echo DEBUG: apt-get install binutils
apt-get install binutils
echo DEBUG: apt-get install g++apt-get install libldap2-dev
apt-get install g++apt-get install libldap2-dev
echo DEBUG: apt-get install zlib1g
apt-get install zlib1g
echo DEBUG: apt-get install openssh-server
apt-get install openssh-server
echo DEBUG: apt-get install openssh-client
apt-get install openssh-client
echo DEBUG: apt-get install expect
apt-get install expect

#install hpcc
echo DEBUG: install hpcc
mkdir hpcc
cd hpcc
echo DEBUG: wget $path2platform
wget $path2platform

echo DEBUG: dpkg -i $HPCCPlatform && apt-get install -f
dpkg -i $HPCCPlatform && apt-get install -f
