################################################################################
#
# beagleboard-helloworld-qt
#
################################################################################

BEAGLEBOARD_HELLOWORLD_QT_VERSION = master
BEAGLEBOARD_HELLOWORLD_QT_SITE = https://github.com/c2h2/buildroot-2016.08.git
BEAGLEBOARD_HELLOWORLD_QT_SITE_METHOD = git
BEAGLEBOARD_HELLOWORLD_QT_INSTALL_STAGING = YES
BEAGLEBOARD_HELLOWORLD_QT_DEPENDENCIES = qt

define BEAGLEBOARD_HELLOWORLD_QT_CONFIGURE_CMDS
        (cd $(@D); $(TARGET_MAKE_ENV) $(HOST_DIR)/usr/bin/qmake)
endef

define BEAGLEBOARD_HELLOWORLD_QT_BUILD_CMDS
        $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)
endef

define BEAGLEBOARD_HELLOWORLD_QT_INSTALL_STAGING_CMDS
endef

define BEAGLEBOARD_HELLOWORLD_QT_INSTALL_TARGET_CMDS
        cp -dpfr $(@D)/beaglebone_hello_world_qt $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))

