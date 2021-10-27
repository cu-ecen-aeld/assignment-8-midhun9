#CHARDEVICE

CHARDEVICE_VERSION = 5370468292aaa9c92f191b512a4e0a432e2e2fae
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
CHARDEVICE_SITE = 'https://github.com/cu-ecen-aeld/assignments-3-and-later-midhun9.git'
CHARDEVICE_SITE_METHOD = git
CHARDEVICE_GIT_SUBMODULES = YES
CHARDEVICE_MODULE_SUBDIRS = aesd-char-driver/

define CHARDEVICE_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/* $(TARGET_DIR)/usr/bin

endef

$(eval $(kernel-module))
$(eval $(generic-package))
