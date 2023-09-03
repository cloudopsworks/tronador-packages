include ../../tasks/Makefile.package
include ../../tasks/Makefile.apk

ifeq ($(OS), darwin)
	OS_TEXT=osx
else
	OS_TEXT=$(OS)
endif
EXTENSION=tar.gz

# Package details
export VENDOR ?= gittools
export DOWNLOAD_URL ?= $(PACKAGE_REPO_URL)/releases/download/v$(PACKAGE_VERSION)/$(PACKAGE_NAME)-$(OS_TEXT)-$(ARCH)-$(PACKAGE_VERSION).$(EXTENSION)
export APK_BUILD_TEMPLATE ?= APKBUILD.github-binary

install:
	$(CURL) -o - $(DOWNLOAD_URL) | tar --wildcards -zxO */gitversion > $(INSTALL_PATH)/gitversion
	chmod +x $(INSTALL_PATH)/gitversion
	@exit 0

test:
	$(PACKAGE_EXE) --version

package/prepare::
	mv src/gitversion_v$(PACKAGE_VERSION)_$(OS)_$(ARCH)/$(PACKAGE_EXE) src
