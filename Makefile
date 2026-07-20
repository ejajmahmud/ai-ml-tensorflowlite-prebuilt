
LIBDIR ?= "/usr/lib64"
SBINDIR ?= "/usr/sbin"
DATADIR ?= "/usr/share"
INCLUDEDIR ?= "/usr/include"
PWD ?= ""
LIBS=/usr/lib64/*

all:

install:
	install -d $(INCLUDEDIR)
	cp -a ${PWD}/usr/include/* $(INCLUDEDIR)

	install -d $(LIBDIR)
	cp -a $(PWD)/usr/lib64/* $(LIBDIR)

	install -d $(LIBDIR)/pkgconfig
	cp -a $(PWD)/usr/lib64/pkgconfig/*.pc $(LIBDIR)/pkgconfig

	install -d $(SBINDIR)
	install $(PWD)/usr/sbin/* $(SBINDIR)

	install -d $(DATADIR)
	install -d $(DATADIR)/label_image
	install $(PWD)/usr/share/label_image/* $(DATADIR)/label_image
