all: sync

sync:
	@echo "Creating folders.."
	mkdir -p ~/.config/alacritty
	mkdir -p ~/Sites

	@echo "Symlinking files..."
	[ -f ~/.zshrc ] || ln -s $(PWD)/zshrc ~/.zshrc
	[ -f ~/.aliases ] || ln -s $(PWD)/aliases ~/.aliases
	[ -f ~/.vimrc ] || ln -s $(PWD)/vimrc ~/.vimrc
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.gitignore ] || ln -s $(PWD)/gitignore ~/.gitignore

	# don't show last login message
	touch ~/.hushlogin
	
	git config --global core.excludesfile $HOME/.gitignore

	source ~/.zshrc

clean:
	@echo "Cleaning up..."
	rm -f ~/.zshrc
	rm -f ~/.aliases
	rm -f ~/.vimrc
	rm -f ~/.gitconfig
	rm -f ~/.gitignore

.PHONY: all clean sync
