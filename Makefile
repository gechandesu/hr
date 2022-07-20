PREFIX := "$$HOME/.local"

all:
	nimble build
	rst2man src/hr.1.rst | gzip -9 -c > hr.1.gz

install:
	install -D hr $(PREFIX)/bin/hr
	install -D hr.1.gz $(PREFIX)/share/man/man1/hr.1.gz
