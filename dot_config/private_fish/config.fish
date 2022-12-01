# Theme
set fish_theme starship

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins git bundler

# Locale cfgs
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

# Load iterm2 integration
source ~/.iterm2_shell_integration.fish

# Initiate starship
starship init fish | source
