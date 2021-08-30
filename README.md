# 🍎 dotfiles-mac

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
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Switch to zsh shell

```
chsh -s $(which zsh)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### Download iTerm2 Colors
```
curl -o Nord.itermcolors https://raw.githubusercontent.com/arcticicestudio/nord-iterm2/master/src/xml/Nord.itermcolors
```

### Download Terminal colors
```
curl -o Nord.terminal https://raw.githubusercontent.com/arcticicestudio/nord-terminal-app/master/src/xml/Nord.terminal
```

### Install VIM plugins
```
vim ~

:PlugInstall
```

### Install NVM

```
mkdir ~/.nvm
ln -s $(brew --prefix nvm)/nvm.sh ~/.nvm/nvm.sh

nvm install node
```

### Install chruby and ruby-install

```
ruby-install ruby
(start new terminal session)
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
