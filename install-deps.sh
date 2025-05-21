#!/usr/bin/env bash
set -e

# Load existing cargo env if present
if [ -f "$HOME/.cargo/env" ]; then
  # shellcheck source=/dev/null
  source "$HOME/.cargo/env"
fi

# 1) Install rustup if needed
if ! command -v rustup &>/dev/null; then
  echo "🚀 Installing rustup..."
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs |
    sh -s -- -y
  # shellcheck source=/dev/null
  source "$HOME/.cargo/env"
else
  echo "✅ rustup already installed"
fi

# 2) Install git-delta if needed
if ! command -v delta &>/dev/null; then
  echo "🚀 Installing git-delta..."
  cargo install git-delta
else
  echo "✅ git-delta already installed"
fi

# 3) Install lsd if needed
if ! command -v lsd &>/dev/null; then
  echo "🚀 Installing lsd..."
  cargo install lsd
else
  echo "✅ lsd already installed"
fi

# 4) Install antigen if needed
ANTIGEN_ZSH="$HOME/.config/antigen/antigen.zsh"
if [ ! -f "$ANTIGEN_ZSH" ]; then
  echo "🚀 Installing antigen..."
  mkdir -p "$(dirname "$ANTIGEN_ZSH")"
  curl -L git.io/antigen >"$ANTIGEN_ZSH"
else
  echo "✅ antigen already installed"
fi

echo "All done!"
