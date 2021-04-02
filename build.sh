#!/bin/bash

# This, is the main point, where all things change

cd /drone/src/work/
# Clone tree START
git clone https://github.com/JamieHoSzeYui/device_xiaomi_sakura_twrp device/xiaomi/sakura 
git clone --depth=1 --single-branch https://github.com/mahajant99/kernel_xiaomi_msm8953-sakura kenrel/xiaomi/sakura
# CLONE TREE END

# VARIABLES, DEFINE THEM ELSE YOU'RE GAY
DEVICE=sakura
TARGET=recoveryimage
# END VARIABLES

. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch omni_$DEVICE-eng
mka $TARGET -j48

# Upload
cd out/target/product/$DEVICE/
touch links.txt
echo "Recovery image on wetransfer: " >> links.txt
transfer wet recovery.img  | grep Download >> links.txt
echo "Flashable zip link:" >> links.txt 
transfer wet SHRP_v3*.zip | grep Download >> links.txt 
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "" 
cat links.txt 
