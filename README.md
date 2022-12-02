# Chris' Dot Files

My collection of dotfiles for macOS

## Dependencies

1. ```chezmoi```
2. ```git```
3. ```homebrew```

## Usage

### Fresh install

#### One-Step

```bash
git pull https://github.com/ChristopherLiew/dotfiles.git
bash ./install.sh
```

#### Homebrew

```zsh
# 1. Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Install chezmoi via brew
brew install chezmoi

# 3. Pull and apply dotfiles from github
chezmoi init --apply ChristopherLiew
```
