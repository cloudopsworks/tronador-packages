include ../../tasks/Makefile.package
include ../../tasks/Makefile.apk

# Package details
export VENDOR ?= mikefarah
export DOWNLOAD_URL ?= $(PACKAGE_REPO_URL)/releases/download/v$(PACKAGE_VERSION)/$(PACKAGE_NAME)_$(OS)_$(ARCH)
export APK_BUILD_TEMPLATE ?= APKBUILD.github-binary

install:
	@$(call download_binary)

test:
	@$(PACKAGE_EXE) --version

