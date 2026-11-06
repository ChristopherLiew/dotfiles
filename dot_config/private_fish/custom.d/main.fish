
# Go environment variables
set -gx GOPATH $HOME/go
set -gx PATH $PATH $GOPATH/bin
set -gx GO111MODULE on

# ponytail: strip version-pinned Homebrew Go keg paths; rely on /opt/homebrew/bin/go.
set -gx PATH (string match -rv '^/opt/homebrew/Cellar/go(@[^/]+)?/[^/]+/libexec/bin$' -- $PATH)

# Java commands
jenv init - | source
abbr -a j17 'set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home'
abbr -a j8 'set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home'

# Thrift

# Directory shortcuts
alias dt="cd ~/Desktop"
alias dl="cd ~/Downloads"

# Auto-Warpify
status --is-interactive; and printf 'P$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "fish", "uname": "Darwin" }}�' 
abbr -a -- gaa 'git add --all'
abbr -a -- gem 'git commit --amend'
abbr -a -- gp 'git push'
abbr -a -- gf 'git fetch'
abbr -a -- gpl 'git pull'
abbr -a --set-cursor='%' -- gcm 'git commit -m "feat: %"'

abbr -a -- spank "spank --halo --cooldown 600"

# bun
set -gx BUN_INSTALL "$HOME/.bun"
fish_add_path $BUN_INSTALL/bin

# Git abbreviations
abbr -a -- gpf 'git push -f'
abbr -a -- goup 'go get -u ./...'

