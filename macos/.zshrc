# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/oberacda/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/oberacda/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/oberacda/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/oberacda/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# User configuration
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.cabal/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=/usr/local/lib/ruby/gems/3.0.0/bin:$PATH
export PATH="/usr/local/opt/llvm/bin:$PATH"

export JAVA_HOME=$(/usr/libexec/java_home -v 15.0.1)

export DYLD_LIBRARY_PATH="/usr/local/opt/icu4c/lib:$DYLD_LIBRARY_PATH"

export MANPATH="/usr/local/man:$MANPATH"

# Load Antigen
source "$HOME/.config/zsh/antigen.zsh"

# Load Antigen configurations
antigen init ~/.antigenrc

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Compilation flags
export ARCHFLAGS="-arch x86_64"

export EDITOR='vim'
export VISUAL='vim'

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

export LLVM_CONFIG="/usr/bin/llvm-config-12"

