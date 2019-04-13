# dotfiles-mac

Cow files go into `/usr/local/Cellar/cowsay/3.04/share/cows/`

To Install:

```
cd ~
curl https://raw.githubusercontent.com/passcod/nvm-fish-wrapper/master/nvm.fish --output ~/Code/dotfiles/config/fish/nvm-wrapper/nvm.fish
rcup -v -x README.md -x .gitignore -d ~/Code/dotfiles
```

Colorschemes:

```
# iTerm:
mkdir -p colors/iterm
curl --create-dirs https://raw.githubusercontent.com/dracula/iterm/master/Dracula.itermcolors --output colors/iterm/Dracula.itermcolors

# VIM:
curl --create-dirs  https://raw.githubusercontent.com/dracula/vim/master/colors/dracula.vim --output vim/colors/dracula.vim

# VS Code
# SEE: https://draculatheme.com/visual-studio-code/
```

https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts
