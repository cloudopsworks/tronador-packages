include ../../tasks/Makefile.package
include ../../tasks/Makefile.apk

# Package details
export VENDOR ?= gruntwork-io
export DOWNLOAD_URL ?= https://github.com/gruntwork-io/boilerplate/releases/download/v$(PACKAGE_VERSION)/boilerplate_${OS}_${ARCH}

	## Run go generate in all packages
export APK_BUILD_TEMPLATE ?= APKBUILD.github-binary

install:
	$(call download_binary)

test:
	$(PACKAGE_EXE) version

