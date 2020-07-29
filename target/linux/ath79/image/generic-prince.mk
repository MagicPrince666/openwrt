include ./common-buffalo.mk
include ./common-netgear.mk
include ./common-yuncore.mk

DEVICE_VARS += ADDPATTERN_ID ADDPATTERN_VERSION
DEVICE_VARS += SEAMA_SIGNATURE SEAMA_MTDBLOCK
DEVICE_VARS += KERNEL_INITRAMFS_PREFIX

define Device/prince_link
  ATH_SOC := ar9342
  DEVICE_TITLE := Prince link 16M
  IMAGE_SIZE := 16128k
  DEVICE_PACKAGES := arptables luci wpad-mesh-openssl libstdcpp
endef
TARGET_DEVICES += prince_link

define Device/prince_link-8m
  ATH_SOC := ar9342
  DEVICE_TITLE := prince link 8M
  IMAGE_SIZE := 7936k
  DEVICE_PACKAGES :=  arptables luci atftp wpad-mesh-openssl libstdcpp usbutils
endef
TARGET_DEVICES += prince_link-8m