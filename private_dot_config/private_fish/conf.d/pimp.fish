# pimp.fish — interactive niceties. Delete this file to undo.
status is-interactive; or return

set -g fish_greeting                      # no greeting

# eza / bat replace ls / cat
alias ls 'eza --icons --group-directories-first'
alias ll 'eza -l --icons --git --group-directories-first'
alias la 'eza -la --icons --git --group-directories-first'
alias lt 'eza --tree --level=2 --icons'
alias cat 'bat --paging=never'
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"

# fzf uses fd + bat preview
set -gx FZF_DEFAULT_COMMAND 'fd --type f --hidden --exclude .git'
set -gx FZF_DEFAULT_OPTS '--height 40% --layout=reverse --border --preview-window=right:50%'
