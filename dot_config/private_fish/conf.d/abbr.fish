# Variables
set editor "vim"

# Fundamentals
abbr cpr 'cp -rf'
abbr rmr 'rm -rf'
abbr md 'mkdir -p'
abbr rd 'rmdir'
if type -q exa
    abbr lsa 'exa -lag --git --icons --sort=type'
    abbr l 'exa -lag --git --icons --sort=type'
    abbr ll 'exa -l --icons --git --sort=type'
    abbr la 'exa -lag --git --icons --sort=type'
else
    abbr lsa 'ls -lah'
    abbr l 'ls -lah'
    abbr ll 'ls -lh'
    abbr la 'ls-lAh'
end

# Quick access
abbr home "cd ~"
abbr dt "cd ~/Desktop"
abbr dl "cd ~/Downloads"
abbr dc "cd ~/Documents"

# Config files
abbr cvim "$editor $HOME/.vimrc"
abbr cfish "$editor $__fish_config_dir/config.fish"
abbr czsh "$editor $HOME/.zshrc"

# Docker compose
if type -q docker-compose
    abbr dcup 'docker-compose up -d'
    abbr dcupb "docker-compose up --build"
    abbr dcdn 'docker-compose down'
    abbr dcl 'docker-compose logs'
    abbr dclf 'docker-compose logs -f'
    abbr dcpull 'docker-compose pull'
    abbr dps "docker ps"
end

# Chezmoi
if type -q chezmoi
    abbr c 'chezmoi'
    abbr ca 'chezmoi apply'
    abbr cu 'chezmoi update'
    abbr ce 'chezmoi edit'
    abbr cs 'chezmoi status'
    abbr cc 'chezmoi cd'
end

# Git
if type -q git
    abbr g 'git'
    abbr ga 'git add .'
    abbr gaa 'git add --all'
    abbr gc 'git commit'
    abbr gcm 'git commit -m'
    abbr gs 'git status'
    abbr gp 'git push'
    abbr gpl 'git pull'
    abbr gl 'git log'
    abbr gd 'git diff'
    abbr gr 'git restore .'
end

# Brew
abbr buu 'brew update & && brew upgrade &'
abbr bi 'brew info'

# Pip
abbr pips 'pip freeze | grep'
