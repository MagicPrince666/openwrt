#
# Copyright (C) 2013-2016 OpenWrt.org
# Copyright (C) 2016 Yousong Zhou
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Device/fsl-imx8
  IMX8_DTS_DIR := freescale/
  KERNEL_NAME := Image
  KERNEL := kernel-bin
endef

define Device/fsl-imx8mm
  SOC := fsl-imx8mm
  $(Device/fsl-imx8)
endef

define Device/xag-surperx4
  DEVICE_VENDOR := XAG
  DEVICE_MODEL := SURPERX4
  $(Device/fsl-imx8mm)
  DEVICE_PACKAGES := kmod-usb2 kmod-usb-acm kmod-usb-storage-extras \
  kmod-usb-net kmod-usb-net-asix kmod-usb-net-rtl8152 kmod-usb-net-rndis \
  luci kmod-fs-ext4 kmod-fs-vfat kmod-fuse usbutils usb-modeswitch usbmuxd
  CONFIG_TARGET_ROOTFS_PARTSIZE := 7168
endef
TARGET_DEVICES += xag-surperx4

