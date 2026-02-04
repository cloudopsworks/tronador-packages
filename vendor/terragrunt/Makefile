include ../../tasks/Makefile.package
include ../../tasks/Makefile.apk

# Package details
export VENDOR ?= gruntwork-io
export DOWNLOAD_URL ?= https://github.com/gruntwork-io/terragrunt/releases/download/v$(PACKAGE_VERSION)/terragrunt_${OS}_${ARCH}

	## Run go generate in all packages
export APK_BUILD_TEMPLATE ?= APKBUILD.github-binary

.PHONY: install test

install:
	$(call download_binary)

test:
	$(PACKAGE_EXE) version

