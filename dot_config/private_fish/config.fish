# Locale cfgs
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

# Source custom configs
for file in $__fish_config_dir/custom.d/*.fish
    source $file
end

# Init Starship prompt
if type -q starship
    starship init fish | source
end
