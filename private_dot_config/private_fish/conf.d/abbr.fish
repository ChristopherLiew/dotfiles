# Variables
set editor "vim"

# Fundamentals
abbr cpr 'cp -rf'
abbr rmr 'rm -rf'
abbr md 'mkdir -p'
abbr rd 'rmdir'
# Quick access
abbr home "cd ~"
abbr .. "cd .."
abbr ... "cd ../.."
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
    abbr --set-cursor='%' gcm 'git commit -m "feat: %"'
    abbr gs 'git status -sb'
    abbr gp 'git push'
    abbr gpl 'git pull'
    abbr gl 'git log --oneline --graph -15'
    abbr gd 'git diff'
    abbr gr 'git restore .'
    abbr gco 'git checkout'
    abbr gst 'git stash'
    abbr gem 'git commit --amend'
    abbr gf 'git fetch'
    abbr gpf 'git push -f'
end

# Brew
abbr buu 'brew update && brew upgrade'
abbr buuc 'brew update && brew upgrade && brew cleanup'
abbr bi 'brew info'

# Pip
abbr pips 'pip freeze | grep'

# Go
abbr goup 'go get -u ./...'

# Java
abbr j17 'set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home'
abbr j8 'set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home'

# Misc
abbr spank 'spank --halo --cooldown 600'
