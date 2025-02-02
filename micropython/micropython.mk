
include $(INCLUDE_DIR)/download.mk
include $(INCLUDE_DIR)/package.mk

define micropython/info
  PKG_NAME:=micropython
  PKG_SOURCE_URL:=https://github.com/micropython/micropython.git
  PKG_SOURCE_PROTO:=git
  PKG_SOURCE_VERSION:=v1.17
  PKG_SOURCE_MD5:=639c7fcbe62a8252cf9367147d94c150
endef

define micropython/prereq
	$(eval $(micropython/info))
	$(call Package/prereq,$(BUILD_DIR))
	$(call Package/patches,$(BUILD_DIR)/$(PKG_NAME),$(TOP_DIR)/$(PKG_NAME)/patches)
endef
