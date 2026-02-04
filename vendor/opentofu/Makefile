include ../../tasks/Makefile.package
include ../../tasks/Makefile.apk

# Package details
export VENDOR ?= opentofu
export DOWNLOAD_URL ?= https://github.com/opentofu/$(VENDOR)/releases/download/v$(PACKAGE_VERSION)/tofu_$(PACKAGE_VERSION)_$(OS)_$(ARCH).zip

	## Run go generate in all packages
export APK_BUILD_TEMPLATE ?= APKBUILD.github-binary

.PHONY: install test

install:
	@mkdir -p $(TMP)/$(PACKAGE_NAME)
	@$(CURL) -o $(TMP)/$(PACKAGE_NAME)/$(PACKAGE_NAME).zip $(DOWNLOAD_URL)
	@unzip -y -q -u -d $(TMP)/$(PACKAGE_NAME) $(TMP)/$(PACKAGE_NAME)/$(PACKAGE_NAME).zip
	@mv $(TMP)/$(PACKAGE_NAME)/tofu $(INSTALL_PATH)/tofu
	@chmod +x $(INSTALL_PATH)/tofu

test:
	$(PACKAGE_EXE) version

