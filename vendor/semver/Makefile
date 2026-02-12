include ../../tasks/Makefile.package
include ../../tasks/Makefile.apk

# Map architecture names to match semver release naming
ifeq ($(ARCH),aarch64)
	ARCH_TEXT=arm64
else
	ARCH_TEXT=$(ARCH)
endif

# Package details
export VENDOR ?= cloudopsworks
# Use ARCH_TEXT for URL construction to handle ARM64 mapping
export DOWNLOAD_URL ?= $(PACKAGE_REPO_URL)/releases/download/v$(PACKAGE_VERSION)/$(PACKAGE_NAME)_$(OS)_$(ARCH_TEXT)
export APK_BUILD_TEMPLATE ?= APKBUILD.github-binary

install:
	@$(CURL) -o - $(DOWNLOAD_URL) > $(INSTALL_PATH)/semver
	@chmod +x $(INSTALL_PATH)/semver
	@exit 0

test:
	$(PACKAGE_EXE) --version

package/prepare::
	mv src/semver_v$(PACKAGE_VERSION)_$(OS)_$(ARCH)/$(PACKAGE_EXE) src
