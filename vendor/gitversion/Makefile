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

install: install-$(OS)
	@exit 0

install-darwin:
	$(CURL) -o - $(DOWNLOAD_URL) > $(INSTALL_PATH)/gh.zip
	unzip -p $(INSTALL_PATH)/gh.zip */gh > $(INSTALL_PATH)/gh
	rm $(INSTALL_PATH)/gh.zip
	chmod +x $(INSTALL_PATH)/gh

install-linux:
	$(CURL) -o - $(DOWNLOAD_URL) | tar --wildcards -zxO */gh > $(INSTALL_PATH)/gh
	chmod +x $(INSTALL_PATH)/gh

test:
	$(PACKAGE_EXE) --version

package/prepare::
	mv src/gh_v$(PACKAGE_VERSION)_$(OS)_$(ARCH)/$(PACKAGE_EXE) src
