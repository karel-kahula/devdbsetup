install:
	cp -f devdbsetup /usr/local/bin

uninstall:
	rm -f /usr/local/bin/devdbsetup

.PHONY: install uninstall
