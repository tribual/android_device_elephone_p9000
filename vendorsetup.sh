#
# Copyright 2015 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file is executed by build/envsetup.sh, and can use anything
# defined in envsetup.sh.
#
# In particular, you can add lunch options with the add_lunch_combo
# function: add_lunch_combo generic-eng

for var in eng user userdebug; do
  add_lunch_combo lineage_p9000-$var
done

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
