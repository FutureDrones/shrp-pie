#!/bin/bash
clear

sudo mkdir /drone/src/work/
cd /drone/src/work/

sudo apt-get -y update 
sudo apt-get install bc cpio build-essential zip curl libstdc++6 git wget python2 gcc clang libssl-dev rsync flex bison -y
sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1 #Python2 supremacy
sudo chmod -R 0777 .

repo init -q --no-repo-verify --depth=1 -u git://github.com/SHRP/platform_manifest_twrp_omni.git -b v3_9.0 -g default,-device,-mips,-darwin,-notdefault

repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j 30 || repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j 8

curl -sL https://git.io/file-transfer | sh
sudo cp -fpr transfer /bin/
