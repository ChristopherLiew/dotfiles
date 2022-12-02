#!/bin/bash

set -e

# Check if chezmoi is installed else install
if [ ! "$(command -v chezmoi)" ]; then
    bin_dir="$HOME/.local/bin"
    if [ "$(command -v curl)" ]; then
        bash -c "$(curl -fsSL https://git.io/chezmoi)" -- -b "$bin_dir"
    elif [ "$(command -v wget)" ]; then
        bash -c "$(wget -qO- https://git.io/chezmoi)" -- -b "$bin_dir"
    else
        echo "To install chezmoi, you must have curl or wget installed." >&2
        exit 1
    fi
fi

# Apply dotfiles
read -n 1 -p "Do you want to apply the dotfiles from ChristopherLiew GitHub [y/N]: " answer
if [ "$answer" == "${answer#n [Yy]}" ]; then
    chezmoi init --apply ChristopherLiew
else
    echo "Aborted"
    exit 1
fi

# Update Brew
if [ ! "$(command -v brew)" ]; then
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Brewfile
brew bundle --file="$HOME/.config/brew/Brewfile"
