set -x PATH /bin $PATH
set -x PATH /usr/local/bin $PATH
set -x PATH /usr/local/opt/openssl/bin $PATH 

if status is-interactive
    eval (/opt/homebrew/bin/brew shellenv)
end

if test -d "$HOME/.volta"
  set -gx VOLTA_HOME "$HOME/.volta"
  set -gx PATH "$VOLTA_HOME/bin" $PATH
end

# pnpm
if test (uname) = "Darwin"
    set -gx PNPM_HOME "$HOME/Library/pnpm"
else if test (uname) = "Linux"
    set -gx PNPM_HOME "$HOME/.local/share/pnpm"
end

# pnpm for Mac
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end


# mise
if test (uname) = "Darwin"
  if test -d "$HOME/Library/mise"
    $HOME/.local/bin/mise activate fish | source
  end
else if test (uname) = "Linux"
  if test -d "$HOME/.local/share/mise"
    $HOME/.local/bin/mise activate fish | source
  end
end
