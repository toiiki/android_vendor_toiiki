# Check for target product
ifeq (pa_pascal2,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_large-mdpi

# include ParanoidAndroid common configuration
include vendor/toiiki/config/pa_common.mk

# Inherit CM device configuration
$(call inherit-product, device/rockchip/pascal2/cm.mk)

PRODUCT_NAME := pa_pascal2

GET_VENDOR_PROPS := $(shell vendor/toiiki/tools/getvendorprops.py $(PRODUCT_NAME))

endif
