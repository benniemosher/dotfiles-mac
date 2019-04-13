# dotfiles-mac

## To Install:

### Install homebrew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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

### Setup Github SSH Key

```
# SEE: https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
# SEE: https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account
```

### Install NVM

```
mkdir ~/.nvm
ln -s (brew --prefix nvm)/nvm.sh ~/.nvm/nvm.sh

git clone git://github.com/passcod/nvm-fish-wrapper.git ~/.config/fish/nvm-wrapper

nvm install $NODE_VERSION
```

### Install chruby and ruby-install

```
ruby-install ruby $RUBY_VERSION
```

### Install GPG and Keybase keys

```
keybase login
chmod 700 ~/.gnupg
keybase pgp list
keybase pgp export -q <ID_FROM_ABOVE> | gpg --import
keybase pgp export -q <ID_FROM_ABOVE> --secret | gpg --allow-secret-key-import --import
```

### Copy cowfiles

```
ln -s cowfiles/* /usr/local/Cellar/cowsay/3.04/share/cows/
```

### Setup Mac defaults

```
~/Code/dotfiles/bin/macos
```
