echo 'Starting to clone stuffs needed for your device'
echo 'Cloning Common Tree [1/6]'
# Xiaomi SM6375-Common Tree
rm -rf device/xiaomi/sm6375-common
git clone https://github.com/Stone-Development-By-Arijit/device_xiaomi_sm6375-common.git -b udc device/xiaomi/sm6375-common

echo 'Cloning Stone Vendor tree [2/6]'
# Device Vendor Tree
rm -rf vendor/xiaomi
git clone --depth=1 https://github.com/Amrito-Projects/vendor_xiaomi.git -b lineage-21 vendor/xiaomi

echo 'Cloning Kernel tree [3/6]'
# Kernel Tree
rm -rf kernel/xiaomi/sm6375
git clone --depth=1 https://github.com/Amrito-Projects/android_kernel_xiaomi_sm6375.git -b 14.0 kernel/xiaomi/sm6375

echo 'Cloning Prebuilt kernel tree [4/6]'
# Prebuilt Kernel Tree
rm -rf device/xiaomi/stone-kernel
git clone --depth=1 https://github.com/Amrito-Projects/device_xiaomi_stone-kernel.git device/xiaomi/stone-kernel

echo 'Cloning Hardware Xiaomi [5/6]'
# Hardware Xiaomi
rm -rf hardware/xiaomi
git clone --depth=1 https://github.com/Stone-Trees/hardware_xiaomi.git hardware/xiaomi

echo 'Cloning V4a [6/6]'
# V4afx
git clone --depth=1 https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git -b v4a packages/apps/ViPER4AndroidFX

echo 'Completed, Now proceeding to lunch'
