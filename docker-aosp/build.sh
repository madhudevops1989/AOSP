cd /build 
df -h 

# Downloading the source with specific version
repo init -u https://android.googlesource.com/platform/manifest -b android-10.0.0_r41 --depth=1
repo sync -j4

#Setup environment
source build/envsetup.sh
lunch aosp_arm-eng

#Starting to build a code
make -j4
df -h

# output images
ls -a out/target/product/generic/ | grep .img
