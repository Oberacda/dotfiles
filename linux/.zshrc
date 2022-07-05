# User configuration
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.cabal/bin:$PATH

source /opt/ros/noetic/setup.zsh

# Load Antigen
source "$HOME/.config/antigen/antigen.zsh"

# Load Antigen configurations
antigen init ~/.antigenrc
fpath+=~/.zfunc
compinit

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Compilation flags
export ARCHFLAGS="-arch x86_64"
export CC=gcc
export CXX=g++

export EDITOR='vim'
export VISUAL='vim'

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

export LLVM_CONFIG="/usr/bin/llvm-config-14"
export _JAVA_AWT_WM_NONREPARENTING=1


# robot_folders setup
export ROB_FOLDERS_IGNORE_CMAKE_PREFIX_PATH=":-)"
source /home/d4v3/repos/fzi/robot_folders/bin/fzirob_source.sh
