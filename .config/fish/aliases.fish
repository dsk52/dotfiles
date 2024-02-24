set -gx LSCOLORS gxfxcxdxbxegedabagacad
alias ls='ls -G'

alias tree='tree -NC' # N: 文字化け対策, C:色をつける
alias log='git log --oneline --graph --decorate'
alias rm='rm -i'
alias gitprune='git branch --merged | egrep -v "\*|main|master|develop|staging" | xargs git branch -d'

