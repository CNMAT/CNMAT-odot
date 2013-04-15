BUILDTARGETS = mac all win 
OTHERTARGETS = clean install

UNAME = $(shell uname)

ifeq ($(UNAME), Darwin)
MAKEFILE = Makefile.mac.mk
else
MAKEFILE = Makefile.win.mk
endif

$(BUILDTARGETS):
	@$(MAKE) -f $(MAKEFILE)

$(OTHERTARGETS):
	@$(MAKE) -f $(MAKEFILE) $@

.PHONY: $(BUILDTARGETS) $(CLEANTARGETS)
