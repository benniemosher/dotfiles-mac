# dotfiles-mac

## To Install:

### Install homebrew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Setup Github SSH Key

```
# SEE: https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
# SEE: https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account
```

### Setup dotfiles

```
mkdir -p ~/Code/
cd ~/Code/

git clone git@github.com:benniemosher/dotfiles.git

brew bundle --file=~/Code/dotfiles/Brewfile

cd ~

rcup -v -d ~/Code/dotfiles -x .git -x README.md -x .gitignore -x bin -x Brewfile
```

### Switch to zsh shell

```
chsh -s $(which zsh)
```

### Install VIM plugins
```
vim ~

:PlugInstall
```

### Install NVM

```
mkdir ~/.nvm
ln -s (brew --prefix nvm)/nvm.sh ~/.nvm/nvm.sh

nvm install node
```

### Install chruby and ruby-install

```
ruby-install ruby
chruby ruby
```

### Install GPG and Keybase keys

```
keybase login
chmod 700 ~/.gnupg
keybase pgp list
keybase pgp export -q <ID_FROM_ABOVE> | gpg --import
keybase pgp export -q <ID_FROM_ABOVE> --secret | gpg --allow-secret-key-import --import
```

### Setup Mac defaults

```
~/Code/dotfiles/bin/macos
```

### Setup postgres

```
brew services start postgresql
```

### Setup VSCode settings sync
```
SEE: https://mikefrobbins.com/2019/03/21/backup-and-synchronize-vscode-settings-with-a-github-gist/#targetText=In%20VSCode%2C%20press%20F1%20or,Ctrl%20%2B%20Shift%20%2B%20P).
```
