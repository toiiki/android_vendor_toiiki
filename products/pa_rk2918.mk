# Check for target product
ifeq (pa_rk2918,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_large-mdpi

# include ParanoidAndroid common configuration
include vendor/toiiki/config/pa_common.mk

# Build paprefs from sources
PREFS_FROM_SOURCE := true

# Inherit CM device configuration
$(call inherit-product, device/rockchip/rk2918/cm.mk)

PRODUCT_NAME := pa_rk2918

GET_VENDOR_PROPS := $(shell vendor/toiiki/tools/getvendorprops.py $(PRODUCT_NAME))

endif
