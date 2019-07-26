#
# Copyright (C) 2019 The Android Open-Source Project
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

TARGET_USERIMAGES_USE_F2FS := true

LOCAL_PATH := device/google/bonito

# Hardware platform
PRODUCT_PLATFORM := sdm670

include device/google/bonito/device.mk

# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.rc:recovery/root/init.rc \
    $(LOCAL_PATH)/recovery/root/init.recovery.hardware.rc:recovery/root/init.recovery.$(PRODUCT_HARDWARE).rc \
    $(LOCAL_PATH)/recovery/root/plat_hwservice_contexts:recovery/root/plat_hwservice_contexts \
    $(LOCAL_PATH)/recovery/root/plat_service_contexts:recovery/root/plat_service_contexts \
    $(LOCAL_PATH)/recovery/root/vendor_hwservice_contexts:recovery/root/vendor_hwservice_contexts \
    $(LOCAL_PATH)/recovery/root/vndservice_contexts:recovery/root/vndservice_contexts \
    $(LOCAL_PATH)/recovery/root/etc/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(LOCAL_PATH)/recovery/root/sbin/android.hardware.boot@1.0-service:recovery/root/sbin/android.hardware.boot@1.0-service \
    $(LOCAL_PATH)/recovery/root/sbin/android.hardware.confirmationui@1.0.so:recovery/root/sbin/android.hardware.confirmationui@1.0.so \
    $(LOCAL_PATH)/recovery/root/sbin/android.hardware.keymaster@4.0-service-qti:recovery/root/sbin/android.hardware.keymaster@4.0-service-qti \
    $(LOCAL_PATH)/recovery/root/sbin/android.hardware.weaver@1.0.so:recovery/root/sbin/android.hardware.weaver@1.0.so \
    $(LOCAL_PATH)/recovery/root/sbin/android.hardware.weaver@1.0-service.citadel:recovery/root/sbin/android.hardware.weaver@1.0-service.citadel \
    $(LOCAL_PATH)/recovery/root/sbin/citadeld:recovery/root/sbin/citadeld \
    $(LOCAL_PATH)/recovery/root/sbin/libdiag.so:recovery/root/sbin/libdiag.so \
    $(LOCAL_PATH)/recovery/root/sbin/libdrmfs.so:recovery/root/sbin/libdrmfs.so \
    $(LOCAL_PATH)/recovery/root/sbin/libdrmtime.so:recovery/root/sbin/libdrmtime.so \
    $(LOCAL_PATH)/recovery/root/sbin/libgptutils.so:recovery/root/sbin/libgptutils.so \
    $(LOCAL_PATH)/recovery/root/sbin/libicuuc.so:recovery/root/sbin/libicuuc.so \
    $(LOCAL_PATH)/recovery/root/sbin/libion.so:recovery/root/sbin/libion.so \
    $(LOCAL_PATH)/recovery/root/sbin/libprotobuf-cpp-full.so:recovery/root/sbin/libprotobuf-cpp-full.so \
    $(LOCAL_PATH)/recovery/root/sbin/libQSEEComAPI.so:recovery/root/sbin/libQSEEComAPI.so \
    $(LOCAL_PATH)/recovery/root/sbin/librpmb.so:recovery/root/sbin/librpmb.so \
    $(LOCAL_PATH)/recovery/root/sbin/libsecureui.so:recovery/root/sbin/libsecureui.so \
    $(LOCAL_PATH)/recovery/root/sbin/libssd.so:recovery/root/sbin/libssd.so \
    $(LOCAL_PATH)/recovery/root/sbin/libtime_genoff.so:recovery/root/sbin/libtime_genoff.so \
    $(LOCAL_PATH)/recovery/root/sbin/libxml2.so:recovery/root/sbin/libxml2.so \
    $(LOCAL_PATH)/recovery/root/sbin/prepdecrypt.sh:recovery/root/sbin/prepdecrypt.sh \
    $(LOCAL_PATH)/recovery/root/sbin/qseecomd:recovery/root/sbin/qseecomd \
    $(LOCAL_PATH)/recovery/root/sbin/vndservicemanager:recovery/root/sbin/vndservicemanager \
    $(LOCAL_PATH)/recovery/root/system/etc/vintf/manifest.xml:recovery/root/manifest.xml \
    $(LOCAL_PATH)/recovery/root/vendor/compatibility_matrix.1.xml:recovery/root/vendor/compatibility_matrix.1.xml \
    $(LOCAL_PATH)/recovery/root/vendor/compatibility_matrix.2.xml:recovery/root/vendor/compatibility_matrix.2.xml \
    $(LOCAL_PATH)/recovery/root/vendor/compatibility_matrix.3.xml:recovery/root/vendor/compatibility_matrix.3.xml \
    $(LOCAL_PATH)/recovery/root/vendor/compatibility_matrix.device.xml:recovery/root/vendor/compatibility_matrix.device.xml \
    $(LOCAL_PATH)/recovery/root/vendor/compatibility_matrix.legacy.xml:recovery/root/vendor/compatibility_matrix.legacy.xml \
    $(LOCAL_PATH)/recovery/root/vendor/compatibility_matrix.xml:recovery/root/vendor/compatibility_matrix.xml \
    $(LOCAL_PATH)/recovery/root/vendor/etc/vintf/compatibility_matrix.xml:recovery/root/vendor/etc/vintf/compatibility_matrix.xml \
    $(LOCAL_PATH)/recovery/root/vendor/etc/vintf/manifest.xml:recovery/root/vendor/etc/vintf/manifest.xml \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/android.hardware.weaver@1.0-impl.nos.so:recovery/root/vendor/lib64/android.hardware.weaver@1.0-impl.nos.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libkeymasterdeviceutils.so:recovery/root/vendor/lib64/libkeymasterdeviceutils.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libkeymasterutils.so:recovery/root/vendor/lib64/libkeymasterutils.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libnos.so:recovery/root/vendor/lib64/libnos.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libnos_citadeld_proxy.so:recovery/root/vendor/lib64/libnos_citadeld_proxy.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libnos_client_citadel.so:recovery/root/vendor/lib64/libnos_client_citadel.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libnos_datagram.so:recovery/root/vendor/lib64/libnos_datagram.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libnos_datagram_citadel.so:recovery/root/vendor/lib64/libnos_datagram_citadel.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libnosprotos.so:recovery/root/vendor/lib64/libnosprotos.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libnos_transport.so:recovery/root/vendor/lib64/libnos_transport.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/libqtikeymaster4.so:recovery/root/vendor/lib64/libqtikeymaster4.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/nos_app_weaver.so:recovery/root/vendor/lib64/nos_app_weaver.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/hw/android.hardware.boot@1.0-impl.so:recovery/root/vendor/lib64/hw/android.hardware.boot@1.0-impl.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib64/hw/bootctrl.sdm710.so:recovery/root/vendor/lib64/hw/bootctrl.sdm710.so
