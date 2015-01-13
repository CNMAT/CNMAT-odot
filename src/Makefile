BUILDTARGETS = mac all win 
OTHERTARGETS = clean install archive

UNAME = $(shell uname)

ifeq ($(UNAME), Darwin)
MAKEFILE = Makefile.mac.mk
else ifeq ($(UNAME), Linux)
MAKEFILE = Makefile.linux.mk
else
MAKEFILE = Makefile.win.mk
endif

$(BUILDTARGETS):
	@$(MAKE) -f $(MAKEFILE)

$(OTHERTARGETS):
	@$(MAKE) -f $(MAKEFILE) $@

.PHONY: $(BUILDTARGETS) $(CLEANTARGETS)
