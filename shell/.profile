#!/bin/bash

if [ -d "/usr/games" ]; then
  PATH="/usr/games:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.scripts" ]; then
  PATH="$HOME/.scripts:$PATH"
fi

if [ -d "$HOME/.cargo/bin" ]; then
  PATH="$HOME/.cargo/bin:$PATH"
fi

if [ -d "$HOME/.cargo" ]; then
  . "$HOME/.cargo/env"
fi

# You may need to manually set your language environment
export LANG=en_US.UTF-8

export EDITOR="nvim"
export VISUAL='nvim'
export MANPAGER='nvim +Man!'
export TERM=xterm-256color

export GOPATH="$HOME/.go"

# Compilation flags
export CC=clang-19
export CXX=clang++-19
export LLVM_CONFIG="/usr/bin/llvm-config-19"

# Default ROS2 DDS Settings
export ROS_DOMAIN_ID=66
export RMW_IMPLEMENTATION=rmw_fastrtps_cpp

export RCUTILS_CONSOLE_OUTPUT_FORMAT=${RCUTILS_CONSOLE_OUTPUT_FORMAT:='[{severity}] {message}  ({name} {function_name}:{line_number})'}
export RCUTILS_COLORIZED_OUTPUT=1 # force log colors
export ROB_FOLDERS_DISABLE_PROMPT_MODIFICATION=1

export PROFILE_IS_SOURCED=1
