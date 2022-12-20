# 🍎 dotfiles-mac

## To Install:

### Install homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Setup Github SSH Key

```bash
brew install gh
gh auth login
```

### Setup dotfiles

```bash
mkdir -p ~/Code/
cd ~/Code/

gh repo clone benniemosher/dotfiles

brew bundle --file=~/Code/dotfiles/Brewfile
```

### Install oh-my-zsh

```bash
cd ~
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rcup -v -d ~/Code/dotfiles -x .git -x README.md -x .gitignore -x bin -x Brewfile -x Brewfile.lock.json
```

### Switch to zsh shell

```bash
chsh -s $(which zsh)
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### Download Nord Colors

```bash
# TODO: Set these in iTerm and Terminal applications
curl -o Nord.itermcolors https://raw.githubusercontent.com/arcticicestudio/nord-iterm2/master/src/xml/Nord.itermcolors

curl -o Nord.terminal https://raw.githubusercontent.com/arcticicestudio/nord-terminal-app/master/src/xml/Nord.terminal
```

### Install VIM plugins

```bash
vim ~

:PlugInstall
```

### Install GPG and Keybase keys

```bash
keybase login
chmod 700 ~/.gnupg
keybase pgp list
keybase pgp export -q <ID_FROM_ABOVE> | gpg --import
keybase pgp export -q <ID_FROM_ABOVE> --secret | gpg --allow-secret-key-import --import
```

### Setup Mac defaults

```bash
~/Code/dotfiles/bin/macos
```
