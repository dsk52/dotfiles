# locale
set -x LANG ja_JP.UTF-8

# editor
set -x EDITOR vim

source "$HOME/.config/fish/aliases.fish"
source "$HOME/.config/fish/paths.fish"

# direnv
if type -q "direnv"
  direnv hook fish | source
end

set pure_color_primary (set_color "7bb6db")

