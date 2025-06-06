# User configuration
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.cabal/bin:$PATH
export PATH="${PATH}:$(go env GOPATH)/bin"
export BUNDLE_PATH=~/.gems

ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/zsh"
[[ -d $ZSH_CACHE_DIR/completions ]] || mkdir -p $ZSH_CACHE_DIR/completions  # For kubectl completions

# Load Antigen
source "$HOME/.config/antigen/antigen.zsh"

# Load oh-my-zsh library
antigen use oh-my-zsh
# Load bundles from the default repo (oh-my-zsh)
antigen bundle git
antigen bundle command-not-found
# Bazel build system
antigen bundle bazel
# Cabal build system
antigen bundle cabal
# Cargo build system
antigen bundle cargo
# Gitignore templates
antigen bundle gitignore
# Keychain
antigen bundle gpg-agent
antigen bundle keychain
# Rust
antigen bundle rust
antigen bundle rustup
# Virtualenv
antigen bundle virtualenv
antigen bundle docker
antigen bundle spotify

antigen bundle ssh-agent

# Load bundles from external repos
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle 'endaaman/lxd-completion-zsh'
antigen bundle 'svenXY/timewarrior'
antigen bundle unixorn/fzf-zsh-plugin@main
antigen bundle joshskidmore/zsh-fzf-history-search

antigen theme Oberacda/doberacker-bira@main doberacker-bira

# Select theme
#antigen theme doberacker-bira

# Tell Antigen that you're done
antigen apply

fpath=($ZSH_CACHE_DIR/completions $fpath)
fpath=($HOME/.zfunc $fpath)

eval "$(zoxide init zsh)"

#autoload -U compinit
#compinit

autoload -Uz compinit

compinit

source $HOME/.shellrc

[ -z $PROFILE_IS_SOURCED ] && source $HOME/.profile


