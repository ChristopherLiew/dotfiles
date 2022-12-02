# Chris' Dot Files

My collection of dotfiles for macOS managed by chezmoi :)

## Dependencies

1. ```git```
2. ```chezmoi```
3. ```homebrew```

## Usage

### Fresh Install

Pull from Github and run the ```install.sh``` script

```bash
git pull https://github.com/ChristopherLiew/dotfiles.git
bash ./install.sh
```

### Only Dot Files (w/o Brew)

Install ```brew``` and ```chezmoi``` before initialising chezmoi.

```zsh
# 1. Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Install chezmoi via brew
brew install chezmoi

# 3. Pull and apply dotfiles from github
chezmoi init --apply ChristopherLiew
```
