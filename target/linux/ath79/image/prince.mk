include ./common-buffalo.mk
include ./common-netgear.mk
include ./common-yuncore.mk

DEVICE_VARS += ADDPATTERN_ID ADDPATTERN_VERSION
DEVICE_VARS += SEAMA_SIGNATURE SEAMA_MTDBLOCK
DEVICE_VARS += KERNEL_INITRAMFS_PREFIX

define Device/prince_link
  SOC := ar9342
  DEVICE_TITLE := prince link 16M
  IMAGE_SIZE := 16128k
  DEVICE_PACKAGES := kmod-usb-core kmod-usb2 kmod-usb-acm \
  arptables kmod-usb-net kmod-usb-net-rndis \
  luci atftp wpad-mesh-openssl libstdcpp usbutils
endef
TARGET_DEVICES += prince_link

define Device/prince_link-8m
  ATH_SOC := ar9342
  DEVICE_TITLE := prince link 8M
  IMAGE_SIZE := 7936k
  DEVICE_PACKAGES :=  arptables luci atftp wpad-mesh-openssl libstdcpp usbutils
endef
TARGET_DEVICES += prince_link-8m