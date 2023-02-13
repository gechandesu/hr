PREFIX    ?= /usr/local
SRCDIR    = src
BUILDDIR  = build

all:
	nimble build -d:release
	gzip -9ck $(SRCDIR)/hr.1 > $(BUILDDIR)/hr.1.gz

install:
	install -Dm755 $(BUILDDIR)/hr $(PREFIX)/bin/hr
	install -Dm644 $(BUILDDIR)/hr.1.gz $(PREFIX)/share/man/man1/hr.1.gz

uninstall:
	rm -v $(PREFIX)/bin/hr
	rm -v $(PREFIX)/share/man/man1/hr.1.gz
