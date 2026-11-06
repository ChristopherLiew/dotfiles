#!/bin/sh
# Fresh-Mac bootstrap: Homebrew -> chezmoi apply (also runs fisher) -> Brewfile -> fish as login shell.
set -e
command -v brew >/dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install chezmoi fish
chezmoi init --apply ChristopherLiew
brew bundle --file="$(chezmoi source-path)/Brewfile"
FISH=$(command -v fish)
grep -qx "$FISH" /etc/shells || echo "$FISH" | sudo tee -a /etc/shells
[ "$SHELL" = "$FISH" ] || chsh -s "$FISH"
echo "Done. Machine/work-only fish config goes in ~/.config/fish/conf.d/work.fish (not tracked)."
