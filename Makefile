.PHONY: ssh

DIR := ~/.config-files

all: vim ssh tmux zsh alacritty xresources

vim:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	ln -s $(DIR)/.vimrc ~/.vimrc

ssh:
	[ -e ~/.ssh ] || mkdir ~/.ssh
	ln -s $(DIR)/ssh/config ~/.ssh/config

tmux:
	ln -s $(DIR)/.tmux.conf ~/.tmux.conf

zsh:
	ln -s $(DIR)/.zshrc ~/.zshrc

alacritty:
	ln -s $(DIR)/.alacritty.yml ~/.alacritty.yml

xresources:
	ln -s $(DIR)/.Xresources ~/.Xresources
