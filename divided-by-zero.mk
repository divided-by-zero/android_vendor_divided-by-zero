DEVICE_PACKAGE_OVERLAYS += vendor/divided-by-zero/overlay

########################################################
# Binaries
########################################################
files := $(shell ls $(LOCAL_PATH)/proprietary/bin )
PRODUCT_COPY_FILES += $(foreach file, $(files), \
        $(LOCAL_PATH)/proprietary/bin/$(file):system/bin/$(file))

########################################################
# APK
########################################################
files := $(shell ls $(LOCAL_PATH)/proprietary/app )
PRODUCT_COPY_FILES += $(foreach file, $(files), \
        $(LOCAL_PATH)/proprietary/app/$(file):system/app/$(file))


########################################################
# Libraries
########################################################

files := $(shell ls $(LOCAL_PATH)/proprietary/lib )
PRODUCT_COPY_FILES += $(foreach file, $(files), \
        $(LOCAL_PATH)/proprietary/lib/$(file):system/lib/$(file))

