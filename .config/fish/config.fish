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


alias claude="$HOME/.claude/local/claude"

# keychain設定
if status is-interactive; and test -f /etc/os-release; and grep -q "Ubuntu" /etc/os-release
    /usr/bin/keychain -q --nogui $HOME/.ssh/github/id_ed25519
    source $HOME/.keychain/(hostname)-fish
end
