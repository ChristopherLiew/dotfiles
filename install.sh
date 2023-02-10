#!/bin/bash

set -e

# Install Brew
if [ ! "$(command -v brew)" ]; then
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Check if chezmoi is installed else install
if [ ! "$(command -v chezmoi)" ]; then
    bin_dir="$HOME/.local/bin"
    if [ "$(command -v brew)"]; then
        brew install chezmoi
    # Not necessary but just in case
    elif [ "$(command -v curl)" ]; then
        bash -c "$(curl -fsSL https://git.io/chezmoi)" -- -b "$bin_dir"
    elif [ "$(command -v wget)" ]; then
        bash -c "$(wget -qO- https://git.io/chezmoi)" -- -b "$bin_dir"
    else
        echo "To install chezmoi, you must have brew, curl or wget installed." >&2
        exit 1
    fi
fi

# Apply dotfiles
echo "Do you want to apply ChristopherLiew dotFiles? [Enter number]: "
select answer in "Yes" "No"; do
    case $answer in
        Yes ) chezmoi init --apply ChristopherLiew
                break;;
        No ) exit;;
    esac
done

# Apply Brewfile
echo "Run Brew install? [Enter number]: "
select answer in "Yes" "No"; do
    case $answer in
        Yes ) break;;
        No ) exit;;
    esac
done

brew_cfg_dir_path="${HOME}/.config/brew"

if [ ! -d "$brew_cfg_dir_path" ]; then
    echo "Brew config directory not found. Initialising at $brew_cfg_dir_path"
    mkdir -p "$brew_cfg_dir_path"
fi

if [ ! -f "${brew_cfg_dir_path}/Brewfile" ]; then
    echo "Brewfile not found. Initialising at ${brew_cfg_dir_path}/Brewfile"
    cp ./Brewfile "$brew_cfg_dir_path/Brewfile"
else
    echo "Brewfile already exists! Do you want to use ChristopherLiew Brewfile? [Enter number]: "
    select answer in "Yes" "No"; do
        case $answer in
            Yes ) cp ./Brewfile "$brew_cfg_dir_path/Brewfile"
                    break;;
            No ) echo "Bundling using existing Brewfile"
                    break;;
        esac
    done
fi

# Run install and validate
brew bundle --file="${brew_cfg_dir_path}/Brewfile"
brew bundle check

# Install python packages
echo "Install python packages? [Enter number]: "
select answer in "Yes" "No"; do
    case $answer in
        Yes ) pip install -r ./requirements.txt
            break;;
        No ) exit;;
    esac
done

# Change shell to fish
fish_add_path /opt/homebrew/bin
echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
