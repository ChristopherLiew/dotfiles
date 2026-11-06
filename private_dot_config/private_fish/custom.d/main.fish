# Go environment variables
set -gx GOPATH $HOME/go
fish_add_path -a $GOPATH/bin
set -gx GO111MODULE on

# ponytail: strip version-pinned Homebrew Go keg paths; rely on /opt/homebrew/bin/go.
set -gx PATH (string match -rv '^/opt/homebrew/Cellar/go(@[^/]+)?/[^/]+/libexec/bin$' -- $PATH)

type -q jenv; and jenv init - | source

# Auto-Warpify
status --is-interactive; and printf 'P$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "fish", "uname": "Darwin" }}�' 

# bun
set -gx BUN_INSTALL "$HOME/.bun"
fish_add_path $BUN_INSTALL/bin

