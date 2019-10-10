# Install fundle if not installed
if not functions -q fundle
    eval (curl -sfL https://git.io/fundle-install)
end

# plugins
fundle plugin 'oh-my-fish/theme-bobthefish'
fundle plugin 'evanlucas/fish-kubectl-completions'
fundle init

# Import local fish config (mostly used for local env vars)
source ~/.config/fish/local.config.fish

# Setup gpg-agent stuff for Git commits
if test -f ~/.gnupg/.gpg-agent-info -a -n "(pgrep gpg-agent)"
    then
    . ~/.gnupg/gpg-agent-info
    export GPG_AGENT_INFO
    set GPG_TTY (tty)
    export GPG_TTY
# else
#     eval (gpg-agent --daemon | sed -e "s/\(.*\)=\(.*\); export/set -x \1 \2/")
end

# Set default version of Node
set -gx NVM_DIR ~/.nvm
source ~/.config/fish/nvm-wrapper/nvm.fish
# nvm use --silent $NODE_VERSION
# nvm use --delete-prefix v$NODE_VERSION --silent

# Set default version of Ruby
source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish
chruby $RUBY_VERSION

# Set default golang path
set -x -U GOPATH $HOME/Code/go
set -xg PATH $PATH $HOME/Code/go/bin

# print the welcome banner
fortune | cowsay -f dragon | lolcat

# Set bobthefish theme settings for git
set -g theme_display_git yes
set -g theme_display_git_dirty yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_master_branch yes

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
#
# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

# Sets the powerline color scheme
set -g theme_color_scheme dracula

set -g theme_nerd_fonts yes
set -g theme_powerline_fonts yes
set -g theme_display_ruby yes

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

set -gx GREP_OPTIONS '--color=auto --exclude=*.terraform --exclude-dir=*.git'
