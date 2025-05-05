.PHONY: install

install:
	@which stow &> /dev/null || brew install stow
	stow --dotfile bash vim linters
	stow bin
