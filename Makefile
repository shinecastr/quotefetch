SHELL = /bin/sh
PREFIX = /usr


all:
	@echo Run make install to install Quotefetch

install:
	@sudo mkdir -p $(PREFIX)/bin
	@mkdir -p ~/.local/share/quotefetch
	@mkdir -p ~/.config/quotefetch

	@sudo cp quotefetch $(PREFIX)/bin
	@sudo cp index ~/.local/share/quotefetch/index
	@sudo cp quotes.json ~/.config/quotefetch/quotes.json

	@sudo chmod 755 $(PREFIX)/bin/quotefetch
	@sudo chmod 666 ~/.local/share/quotefetch/index
	@sudo chmod 444 ~/.config/quotefetch/quotes.json
uninstall:
	@sudo rm -rf $(PREFIX)/bin/quotefetch
	@sudo rm -rf ~/.local/share/quotefetch
	@sudo rm -rf ~/.config/quotefetch

