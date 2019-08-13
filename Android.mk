#
# Copyright (C) 2017-2019 The LineageOS Project
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

LOCAL_PATH := $(call my-dir)

ifneq ($(filter cactus,$(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

# Firmware
NVDATA_SYMLINK := $(TARGET_OUT_VENDOR)/nvdata
$(NVDATA_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating nvdata symlink: $@"
	$(hide) ln -sf /mnt/vendor/nvdata $@

NVCFG_SYMLINK := $(TARGET_OUT_VENDOR)/nvcfg
$(NVCFG_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating nvcfg symlink: $@"
	$(hide) ln -sf /mnt/vendor/nvcfg $@

PROTECT_F_SYMLINK := $(TARGET_OUT_VENDOR)/protect_f
$(PROTECT_F_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating protect_f symlink: $@"
	$(hide) ln -sf /mnt/vendor/protect_f $@

PROTECT_S_SYMLINK := $(TARGET_OUT_VENDOR)/protect_s
$(PROTECT_S_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating protect_s symlink: $@"
	$(hide) ln -sf /mnt/vendor/protect_s $@

PERSIST_SYMLINK := $(TARGET_OUT_VENDOR)/persist
$(PERSIST_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating persist symlink: $@"
	$(hide) ln -sf /mnt/vendor/persist $@

ALL_DEFAULT_INSTALLED_MODULES += \
    $(NVDATA_SYMLINK) \
    $(NVCFG_SYMLINK) \
    $(PROTECT_F_SYMLINK) \
    $(PROTECT_S_SYMLINK) \
    $(PERSIST_SYMLINK)

endif
