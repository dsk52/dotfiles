# Dotfiles

```
# install all brew dependencies (Mac only)
brew bundle

# make fish the new default
## Linux
chsh -s /usr/local/bin/fish
## Mac
sudo vi /etc/shells # /opt/homebrew/bin/fish を追加
chsh -s /opt/homebrew/bin/fish

# fish
fish -c "curl -sL git.io/fisher | source && fisher update"

# gacp: coventional commit
npm i -g gacp

# generate and add new SSH key
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
```
