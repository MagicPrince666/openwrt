include $(TOPDIR)/rules.mk

#在menuconfig中显示的包名字
PKG_NAME:=keyevent
#版本好可不填
PKG_VERSION:=XAG-huangliquan-1.0
#编译目录
PKG_BUILD_DIR:= $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=base
	CATEGORY:=Utilities
	TITLE:=key event firmware
	#指定包在menuconfig下Utilities菜单下的XAG菜单
	SUBMENU:=XAG
	#包依赖 这里依赖了线程库 c++库
	DEPENDS:= +libpthread +libstdcpp
endef

define Package/$(PKG_NAME)/description
	uart use epoll firmware 
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/$(PKG_NAME)/install
	#设定在安装在文件系统的位置
	$(INSTALL_DIR) $(1)/usr/bin
	#将编译固件拷贝到安装目录，工程会自动打包
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/key_event $(1)/usr/bin/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
