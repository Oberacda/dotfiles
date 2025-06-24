# stuff for easier handling my containers

CONTAINER_USER="ubuntu"

function fzirobdev() {
  devcontainer up --workspace-folder $HOME/repos/devcontainer/humble --dotfiles-repository=https://github.com/Oberacda/dotfiles.git --dotfiles-install-command=install.sh
  devcontainer exec --workspace-folder $HOME/repos/devcontainer/humble zsh
}

alias cddev='cd $HOME/repos/devcontainer'
alias devup='devcontainer up --workspace-folder . --dotfiles-repository=https://github.com/Oberacda/dotfiles.git --dotfiles-install-command=install.sh'
alias devupnodot='devcontainer up --workspace-folder .'
alias devnew='devcontainer up --workspace-folder . --dotfiles-repository=https://github.com/Oberacda/dotfiles.git --dotfiles-install-command=install.sh --remove-existing-container'
alias devrun='devcontainer exec --workspace-folder .'
alias devsh='devcontainer exec --workspace-folder . zsh'
