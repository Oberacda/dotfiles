#!/usr/bin/env bash
set -e

# Install rustup and subsequently rust.
# This is required for some of tools.
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install rust based tools.
cargo install git-delta
cargo install lsd

# Install git config
cp .gitconfig $HOME/.gitconfig

# Install vim config
mkdir -p $HOME/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

if [ "$(uname)" == "Darwin" ]; then
	brew install vim
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    	sudo apt install vim
fi
cp .vimrc $HOME/.vimrc
vim +PluginInstall -c ":q" -c " :q"

# Install zsh config
mkdir -p $HOME/.config/antigen
curl -L git.io/antigen > $HOME/.config/antigen/antigen.zsh

if [ "$(uname)" == "Darwin" ]; then
	brew install zsh
    	cp macos/.zshrc $HOME/.zshrc
	cp macos/.antigenrc $HOME/.antigenrc
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    	sudo apt install zsh
	cp linux/.zshrc $HOME/.zshrc
	cp linux/.antigenrc $HOME/.antigenrc
	mkdir -p $HOME/.config/i3
	cp linux/.i3-config $HOME/.config/i3/config
	mkdir -p $HOME/.config/i3status-rust/
	cp linux/.i3status-rust.toml $HOME/.config/i3status-rust/config.toml

fi


