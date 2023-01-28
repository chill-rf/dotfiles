all: init link brew

init:
	.bin/init.sh

link:
	.bin/link.sh

brew:
	.bin/brew.sh

neovim-install:
	./bin/linux/neovim_install.sh

neovim-uninstall:
	./bin/linux/neovim_uninstall.sh