echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="frameworks/av frameworks/base system/netd hardware/libhardware"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/elephone/p9000/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
