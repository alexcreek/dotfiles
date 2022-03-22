.PHONY: install

install:
	@which stow &> /dev/null || brew install stow
	stow bash bin vim linters
