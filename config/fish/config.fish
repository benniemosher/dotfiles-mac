# Install fundle if not installed
if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end

# bass source ~/.nvm/nvm.sh --no-use ';' nvm use v6.9.4

if test -f ~/.gnupg/.gpg-agent-info -a -n "(pgrep gpg-agent)"; then
  . ~/.gnupg/gpg-agent-info
  export GPG_AGENT_INFO
  set GPG_TTY (tty)
  export GPG_TTY
else
  eval (gpg-agent --daemon | sed -e "s/\(.*\)=\(.*\); export/set -x \1 \2/")
end

# set -g -x PATH ~/Library/Android/sdk/platform-tools $PATH
# set -g -x PATH ~/Library/Android/sdk/tools $PATH
# set -g -x ANDROID_HOME ~/Library/Android/sdk

# set -gx PATH $PATH `yarn global bin`

# source /usr/local/share/chruby/chruby.fish
# source /usr/local/share/chruby/auto.fish

# print the welcome banner
# fish_logo
fortune | cowsay -f R2-D2 | lolcat

#
# std prompt config
#
set __fish_prompt_color_carat (set_color -o blue)
set __fish_prompt_color_user (set_color -o blue)

#
# git prompt config
#
set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

# Sets the powerline color scheme
# set -g theme_color_scheme solarized
set -g theme_color_scheme user
set -l colorfg abb2c0
set -l dircolor 3E4451
set __color_initial_segment_exit     ffffff DF6B75 --bold
set __color_initial_segment_su       ffffff 97C279 --bold
set __color_initial_segment_jobs     ffffff 61AFEF --bold

set __color_path                     $dircolor ffffff
set __color_path_basename            $dircolor ffffff --bold
set __color_path_nowrite             d682f0 $colorfg
set __color_path_nowrite_basename    d682f0 $colorfg --bold

set __color_repo                     97C279 ffffff
set __color_repo_work_tree           97C279 ffffff --bold
set __color_repo_dirty               be5046 ffffff
set __color_repo_staged              e2c08d ffffff

set __color_vi_mode_default          65b6f8 $colorfg --bold
set __color_vi_mode_insert           abdc89 $colorfg --bold
set __color_vi_mode_visual           f2ce97 $colorfg --bold

set __color_vagrant                  66d7e6 $colorfg
set __color_username                 ffffff 000000
set __color_rvm                      97C279 ffffff --bold
set __color_virtualfish              65b6f8 $colorfg --bold

# plugins
fundle plugin 'oh-my-fish/theme-bobthefish'
# fundle plugin 'edc/bass'
fundle init
# set -g fish_user_paths "/usr/local/opt/postgresql@9.4/bin" $fish_user_paths
# set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
# set -g fish_user_paths "/usr/local/opt/icu4c/bin" $fish_user_paths
# set -g fish_user_paths "/usr/local/opt/icu4c/sbin" $fish_user_paths
