#!/bin/bash

DIRNAME=$(cd $(dirname $0) && pwd)

if [ ! -d $HOME/.config ]; then
  mkdir $HOME/.config
fi

rm -rf $HOME/.config/fish
ln -sfnv $DIRNAME/.config/fish $HOME/.config/fish

ln -sfnv $DIRNAME/.editorconfig $HOME/.editorconfig

ln -sfnv $DIRNAME/.gitconfig $HOME/.gitconfig
ln -sfnv $DIRNAME/.gitignore $HOME/.gitignore
ln -sfnv $DIRNAME/.gitexclude $HOME/.gitexclude

ln -sfnv $DIRNAME/.gacprc $HOME/.gacprc
