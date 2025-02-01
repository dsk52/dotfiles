# Dotfiles

## copy config files

```
$ sh link.sh
```

## Windows only: copy wsl config file

```
$ cd dotfiles
$ sudo ln -sfnv ~/dotfiles/wsl.conf /etc/
```

## Mac only: install all brew dependencies

```
brew bundle
```

## fish setup

```
# make fish the new default
## Linux
chsh -s /usr/local/bin/fish
## Mac
sudo vi /etc/shells # /opt/homebrew/bin/fish を追加
chsh -s /opt/homebrew/bin/fish

# fish
fish -c "curl -sL git.io/fisher | source && fisher update"
```

## node.js tools setup

```
# volta setup
# url: https://docs.volta.sh/guide/getting-started

# gacp: coventional commit
npm i -g gacp aws-cdk
```

## SecretLint 設定

```
mkdir -p ~/.git-template/hooks
ln -s ~/dotfiles/.git-template/hooks/pre-commit ~/.git-template/hooks/pre-commit

chmod +x ~/dotfiles/.git-template/hooks/pre-commit

# 必要に応じて以下
# git config --global init.templatedir ~/.git-template
```

## ssh setup

```
# generate and add new SSH key
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
```
