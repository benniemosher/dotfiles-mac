# dotfiles-mac

Cow files go into `/usr/local/Cellar/cowsay/3.04/share/cows/`

To Install:

```
cd ~
rcup -v -x README.md -x .gitignore -d ~/Code/dotfiles
```

Colorschemes:

```
# iTerm:
mkdir -p colors/iterm
curl https://raw.githubusercontent.com/dracula/iterm/master/Dracula.itermcolors --output colors/iterm/Dracula.itermcolors

# VIM:
curl https://raw.githubusercontent.com/dracula/vim/master/colors/dracula.vim --output vim/colors/dracula.vim

# VS Code
# SEE: https://draculatheme.com/visual-studio-code/
```
