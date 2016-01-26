#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# -------------------
# ディレクトリの色を変更
alias ls='ls -G'
export LSCOLORS=gxfxcxdxbxegedabagacad 

# nodebrewのパス
# export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$PATH:~/.nodebrew/current/bin:~/.nodebrew/current/lib/node_modules/npm/bin

# used by local hubot
export PORT=9999

# coreOSのdockerの環境変数
export DOCKER_HOST=tcp://localhost:2375

# weektexのpath
export texhead=/Users/daisuke/Documents/weektex/header.tex

alias la='ls -a'

