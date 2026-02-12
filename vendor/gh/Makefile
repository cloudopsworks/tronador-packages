include ../../tasks/Makefile.package
include ../../tasks/Makefile.apk

ifeq ($(OS), darwin)
	OS_TEXT=macOS
	EXTENSION=zip
else
	OS_TEXT=linux
	EXTENSION=tar.gz
endif

# Map architecture names to match GitHub CLI release naming (Linux only)
ifeq ($(OS_TEXT),linux)
	ifeq ($(ARCH),aarch64)
		ARCH_TEXT=arm64
	else
		ARCH_TEXT=$(ARCH)
	endif
else
	ARCH_TEXT=$(ARCH)
endif

# Package details
export PACKAGE_REPO_URL=https://github.com/cli/cli
export VENDOR ?= cli
# Use ARCH_TEXT for URL construction to handle ARM64 mapping
export DOWNLOAD_URL ?= $(PACKAGE_REPO_URL)/releases/download/v$(PACKAGE_VERSION)/$(PACKAGE_NAME)_$(PACKAGE_VERSION)_$(OS_TEXT)_$(ARCH_TEXT).$(EXTENSION)
export APK_BUILD_TEMPLATE ?= APKBUILD.github-binary

.PHONY: install install-darwin install-linux test

install: install-$(OS)
	@exit 0

install-darwin:
	@$(CURL) -o - $(DOWNLOAD_URL) > $(INSTALL_PATH)/gh.zip
	@unzip -p $(INSTALL_PATH)/gh.zip */gh > $(INSTALL_PATH)/gh
	@rm $(INSTALL_PATH)/gh.zip
	@chmod +x $(INSTALL_PATH)/gh

install-linux:
	@$(CURL) -o - $(DOWNLOAD_URL) | tar --wildcards -zxO */gh > $(INSTALL_PATH)/gh
	@chmod +x $(INSTALL_PATH)/gh

test:
	$(PACKAGE_EXE) --version

package/prepare::
	mv src/gh_v$(PACKAGE_VERSION)_$(OS)_$(ARCH)/$(PACKAGE_EXE) src
