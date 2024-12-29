set -x PATH /bin $PATH
set -x PATH /usr/local/bin $PATH
set -x PATH /usr/local/opt/openssl/bin $PATH 

if test -d "$HOME/.volta"
  set -gx VOLTA_HOME "$HOME/.volta"
  set -gx PATH "$VOLTA_HOME/bin" $PATH
end

if test -d ".local/share/mise"
  $HOME/.local/bin/mise activate fish | source
end

