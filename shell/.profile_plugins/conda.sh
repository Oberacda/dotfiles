# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$("${HOME}/mamba/bin/conda" 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
  eval "$__conda_setup"
else
  if [ -f "${HOME}/mamba/etc/profile.d/conda.sh" ]; then
    . "${HOME}/mamba/etc/profile.d/conda.sh"
  else
    export PATH="${HOME}/mamba/bin:$PATH"
  fi
fi
unset __conda_setup

if [ -f "${HOME}/mamba/etc/profile.d/mamba.sh" ]; then
  . "${HOME}/mamba/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<
