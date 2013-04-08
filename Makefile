BUILDTARGETS = mac all win
CLEANTARGETS = clean

UNAME = $(shell uname)

ifeq ($(UNAME), Darwin)
MAKEFILE = Makefile.mac.mk
else
MAKEFILE = Makefile.win.mk
endif

$(BUILDTARGETS):
	@$(MAKE) -f $(MAKEFILE)

$(CLEANTARGETS):
	@$(MAKE) -f $(MAKEFILE) $@

.PHONY: $(BUILDTARGETS) $(CLEANTARGETS)
