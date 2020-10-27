#
# Copyright (C) 2013-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_VERSION:=2020.04
PKG_RELEASE:=1

PKG_HASH:=fe732aaf037d9cc3c0909bad8362af366ae964bbdac6913a34081ff4ad565372

include $(INCLUDE_DIR)/u-boot.mk
include $(INCLUDE_DIR)/package.mk

define U-Boot/Default
  BUILD_TARGET:=imx8
  UBOOT_IMAGE:=u-boot.bin
endef

define U-Boot/xag-surperx4
  BUILD_SUBTARGET:=cortexa53
  NAME:=XAG surperx4
  BUILD_DEVICES:=fsl-imx8mm-xag-surperx4
#  DEPENDS:=+PACKAGE_u-boot-orangepi_pc2:arm-trusted-firmware-sunxi
endef

UBOOT_TARGETS := \
	xag-surperx4

UBOOT_MAKE_FLAGS += u-boot.bin

define Build/InstallDev
	$(INSTALL_DIR) $(STAGING_DIR_IMAGE)
	$(foreach img,$(UBOOT_IMAGE), \
		$(CP) $(PKG_BUILD_DIR)/$(img) $(STAGING_DIR_IMAGE)/$(BUILD_VARIANT)-$(img); \
	)
endef

$(eval $(call BuildPackage/U-Boot))
