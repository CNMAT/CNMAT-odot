# ###############################################
# LATER think about automatic adding of libraries
ODOTLIBS = odot
$(CFILES)
# this is where we install to
PREFIX     =../odot-build

# this is where we install to (in detail)
INSTALL_BIN=$(PREFIX)/extra
INSTALL_DOC=$(PREFIX)/extra/odothelp

CFILES = $(foreach f, $(COBJECT_LIST), $(f)/$(f).c)

# LATER think about separating ODOTabs and ODOThelp

# ###############################################
.PHONY: odotlibs $(ODOTLIBS)

odotlibs: $(ODOTLIBS)

$(ODOTLIBS):
	$(MAKE) -C pd-build 

install: install-bin install-doc install-abs

install-bin:
	-install -d $(DESTDIR)$(INSTALL_BIN)
	-install -m 644 lib/*.* $(DESTDIR)$(INSTALL_BIN)

install-doc:
	-install -d $(DESTDIR)$(INSTALL_DOC)
	-for d in $(ODOTLIBS); do \
	 for e in pd wav; do \
	  install -m644 $$d/*.$$e $(DESTDIR)$(INSTALL_DOC); \
	 done; \
	done

install-abs:
	-install -d $(DESTDIR)$(INSTALL_BIN)
	-install -m 644 ODOTabs/*.pd $(DESTDIR)$(INSTALL_BIN)

clean:
	for d in $(ODOTLIBS); do \
	  $(MAKE) -C $$d/src clean; \
	done
