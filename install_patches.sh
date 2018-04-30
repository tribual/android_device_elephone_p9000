cd system/core
git reset --hard && git clean -f -d
patch -p1 < ../../device/elephone/p9000/patches/Gatekeeperd-Add-use-software-gatekeeper-option.patch
cd ../..
cd hardware/interfaces
git reset --hard && git clean -f -d
patch -p1 < ../../device/elephone/p9000/patches/HIDL-sensors-fallback-to-API_1_0.patch
patch -p1 < ../../device/elephone/p9000/patches/Error-message-suppress-option.patch
patch -p1 < ../../device/elephone/p9000/patches/Workaround-mtk-camera-blob.patch
patch -p1 < ../../device/elephone/p9000/patches/Disable-vndk-for-the-time-being.patch
cd ../..
