#
# Copyright (C) 2013-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

ARCH:=aarch64
BOARD:=imx8
BOARDNAME:=Freescale i.MX 8
FEATURES:=fpu usb ext4 display rtc squashfs
SUBTARGETS:=cortexa53

KERNEL_PATCHVER:=5.4
KERNEL_TESTING_PATCHVER:=5.4
KERNELNAME:=zImage dtbs

include $(INCLUDE_DIR)/target.mk

DEFAULT_PACKAGES += uboot-envtools
DEFAULT_PACKAGES += partx-utils mkf2fs e2fsprogs

$(eval $(call BuildTarget))
