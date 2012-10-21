# Check for target product
ifeq (pa_galaxysl,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# include ParanoidAndroid common configuration
include vendor/toiiki/config/pa_common.mk

# Inherit CM device configuration
$(call inherit-product, device/samsung/galaxysl/cm.mk)

PRODUCT_NAME := pa_galaxysl

GET_VENDOR_PROPS := $(shell vendor/toiiki/tools/getvendorprops.py $(PRODUCT_NAME))

endif
