################################################################################
#
# wqy-microhei
#
################################################################################

WQY_MICROHEI_VERSION = 0.2.0-beta
WQY_MICROHEI_SITE = http://http.debian.net/debian/pool/main/f/fonts-wqy-microhei
WQY_MICROHEI_SOURCE = fonts-wqy-microhei_$(WQY_MICROHEI_VERSION).orig.tar.gz
WQY_MICROHEI_LICENSE_FILES = LICENSE

WQY_MICROHEI_FONTS_INSTALL = wqy-microhei.ttc

define WQY_MICROHEI_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/usr/share/fonts/truetype/
	for i in $(WQY_MICROHEI_FONTS_INSTALL) ; do \
		$(INSTALL) -m 0644 $(@D)/$$i \
			$(TARGET_DIR)/usr/share/fonts/truetype/ || exit 1 ; \
	done
endef

$(eval $(generic-package))
