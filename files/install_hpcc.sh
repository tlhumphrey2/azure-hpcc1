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

#install hpcc
echo "install hpcc"
mkdir hpcc
cd hpcc
echo "wget $path2platform"
wget $path2platform

echo "sudo dpkg -i $HPCCPlatform && sudo apt-get install -f"
sudo dpkg -i $HPCCPlatform && sudo apt-get install -f
