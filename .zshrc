# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/oberacda/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/oberacda/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/oberacda/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/oberacda/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# User configuration
export PATH="/home/oberacda/.cargo/bin:$PATH"

export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"
export MANPATH="/usr/local/man:$MANPATH"

# Load Antigen
source "$HOME/.config/zsh/antigen.zsh"

# Load Antigen configurations
antigen init ~/.antigenrc

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Compilation flags
export ARCHFLAGS="-arch x86_64"

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

export LLVM_CONFIG="/usr/bin/llvm-config-12"

