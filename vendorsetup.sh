# Clone Repository for Hardware
HW="hardware/xiaomi"
if ! [ -d "$HW" ]; then
    echo "$HW not found! Cloning now..."
    if ! git clone -q https://github.com/HinohArata/android_hardware_xiaomi.git -b lineage-20 $HW; then
        echo "Cloning $HW failed"
    fi
fi

# Clone Repository for Vendor
VT="vendor/xiaomi/surya"
if ! [ -d "$VT" ]; then
    echo "$VT not found! Cloning now..."
    if ! git clone -q https://github.com/HinohArata/surya_vendor.git -b lineage-20 $VT; then
        echo "Cloning $VT failed"
    fi
fi

# Clone Repository for Kernel
KERN="kernel/xiaomi/surya"
if ! [ -d "$KERN" ]; then
    echo "$KERN not found! Cloning now..."
    if ! git clone -q --depth=1 https://github.com/Shiryu-Kernel/kernel_xiaomi_surya.git -b 4.14 $KERN; then
        echo "Cloning $KERN failed"
    fi
fi

echo "Set kernel to non-KSU"
sed -i "s/CONFIG_KSU=y/# CONFIG_KSU is not set/g" kernel/xiaomi/surya/arch/arm64/configs/surya_defconfig

# Clone Repository for Firmware
FW="firmware/xiaomi/surya"
if ! [ -d "$FW" ]; then
    echo "$FW not found! Cloning now..."
    if ! git clone -q https://gitlab.com/HinohArata/firmware_xiaomi_surya.git $FW; then
        echo "Cloning $FW failed"
    fi
fi

# Clone Repository for Leica device
CAM1="device/xiaomi/surya-miuicamera"
if ! [ -d "$CAM1" ]; then
    echo "$CAM1 not found! Cloning now..."
    if ! git clone -q https://gitlab.com/HinohArata/device_xiaomi_surya-miuicamera.git $CAM1; then
        echo "Cloning $CAM1 failed"
    fi
fi

# Clone Repository for Leica vendor
CAM2="vendor/xiaomi/surya-miuicamera"
if ! [ -d "$CAM2" ]; then
    echo "$CAM2 not found! Cloning now..."
    if ! git clone -q https://gitlab.com/HinohArata/vendor_xiaomi_surya-miuicamera.git -b qpr1 $CAM2; then
        echo "Cloning $CAM2 failed"
    fi
fi

# Clone Private Keys
KEYS="vendor/private-keys/keys"
if ! [ -d "$KEYS" ]; then
    echo "$KEYS not found! Cloning now..."
    if ! git clone -q https://github.com/HinohArata/keys -b full $KEYS; then
        echo "Cloning $KEYS failed"
    fi
fi

# Clone XiaomiParts
PARTS="device/xiaomi/surya/parts"
if ! [ -d "$PARTS" ]; then
    echo "$PARTS not found! Cloning now..."
    if ! git clone -q https://github.com/HinohArata/parts -b revamp $PARTS; then
        echo "Cloning $PARTS failed"
    fi
fi

# Clone Clang for Kernel
CLANG="prebuilts/clang/host/linux-x86/clang-r498229"
if ! [ -d "$CLANG" ]; then
    echo "$CLANG not found! Cloning now..."
    if ! git clone -q https://gitlab.com/ThankYouMario/android_prebuilts_clang-standalone.git -b 18 $CLANG; then
        echo "Cloning $CLANG failed"
    fi
fi