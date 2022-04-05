export DEFAULT_HELP_TARGET := help/vendor
export README_DEPS ?= docs/targets.md

export DIST_CMD ?= cp -a
export DIST_PATH ?= $(HOME)/tmp/dist
#export INSTALL_PATH ?= $(HOME)/tmp/local/bin

-include $(shell curl -sSL -o .accelerate-base "https://cowk.io/acc"; echo .accelerate-base)


all: init deps install

deps:
	@exit 0

## Create a distribution by coping $PACKAGES from $INSTALL_PATH to $DIST_PATH
dist:
	mkdir -p $(DIST_PATH)
	[ -z "$(PACKAGES)" ] || \
		( cd $(INSTALL_PATH) && $(DIST_CMD) $(PACKAGES) $(DIST_PATH) )

help/vendor:
	@$(MAKE) --no-print-directory -s -C vendor help
