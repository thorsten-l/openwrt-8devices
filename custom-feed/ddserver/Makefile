
include $(TOPDIR)/rules.mk

PKG_NAME:=ddserver
PKG_VERSION:=0.9.0
PKG_RELEASE:=1
PKG_MAINTAINER:=Thorsten Ludewig (t.ludewig@gmail.com)

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=https://github.com/thorsten-l/DslrDashboardServer/releases/download/v0.9.0/
PKG_HASH:=skip
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/ddserver
  SECTION:=multimedia
  CATEGORY:=Multimedia
  TITLE:=DSLR Dashboard Server
  URL:=https://dslrdashboard.info/
  DEPENDS:=+libusb-1.0 +libpthread +libstdcpp
endef

define Package/ddserver/description
 USB transport server for DSLR Dashboard
endef

define Package/ddserver/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/ddserver  $(1)/usr/bin/
endef

$(eval $(call BuildPackage,ddserver))
 