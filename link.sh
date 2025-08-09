#!/bin/bash

DIRNAME=$(cd $(dirname $0) && pwd)

if [ ! -d $HOME/.config ]; then
  mkdir $HOME/.config
fi

# fish
rm -rf $HOME/.config/fish
ln -sfnv $DIRNAME/.config/fish $HOME/.config/fish

# git
ln -sfnv $DIRNAME/.gitconfig $HOME/.gitconfig
ln -sfnv $DIRNAME/.gitignore $HOME/.gitignore
ln -sfnv $DIRNAME/.gitexclude $HOME/.gitexclude

ln -sfnv $DIRNAME/.editorconfig $HOME/.editorconfig
ln -sfnv $DIRNAME/.gacprc $HOME/.gacprc

# claude code
if [ ! -d $HOME/.claude ]; then
  mkdir $HOME/.claude
fi

ln -sfnv $DIRNAME/.claude/CLAUDE.md $HOME/.claude/CLAUDE.md
ln -sfnv $DIRNAME/.claude/setting.json $HOME/.claude/setting.json
