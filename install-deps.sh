#!/usr/bin/env bash
set -e

# Install rustup and subsequently rust.
# This is required for some of tools.
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install rust based tools.
cargo install git-delta
cargo install lsd
# Install zsh config
mkdir -p $HOME/.config/antigen
curl -L git.io/antigen >$HOME/.config/antigen/antigen.zsh
