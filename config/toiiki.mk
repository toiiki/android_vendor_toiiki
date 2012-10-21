# add Prebuilt apk
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,vendor/toiiki/mod/,system)

