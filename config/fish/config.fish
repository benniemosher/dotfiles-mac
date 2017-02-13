# Install fundle if not installed
if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end

bass source ~/.nvm/nvm.sh --no-use ';' nvm use v6.9.4

if test -f ~/.gnupg/.gpg-agent-info -a -n "(pgrep gpg-agent)"; then
  . ~/.gnupg/gpg-agent-info
  export GPG_AGENT_INFO
  set GPG_TTY (tty)
  export GPG_TTY
else
  eval (gpg-agent --daemon | sed -e "s/\(.*\)=\(.*\); export/set -x \1 \2/")
end

set -g -x PATH /Users/bam/Library/Android/sdk/platform-tools $PATH
set -g -x PATH /Users/bam/Library/Android/sdk/tools $PATH
set -g -x ANDROID_HOME /Users/bam/Library/Android/sdk

# print the welcome banner
# fish_logo
fortune | fishthink | lolcat

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
# set -g theme_color_scheme base16-dark
set -g theme_color_scheme user
set -l colorfg abb2c0
set -l dircolor 3E4451
set __color_initial_segment_exit     white red --bold
set __color_initial_segment_su       white green --bold
set __color_initial_segment_jobs     white blue --bold

set __color_path                     $dircolor white
set __color_path_basename            $dircolor white --bold
set __color_path_nowrite             magenta $colorfg
set __color_path_nowrite_basename    magenta $colorfg --bold

set __color_repo                     green white
set __color_repo_work_tree           green white --bold
set __color_repo_dirty               red white
set __color_repo_staged              yellow white

set __color_vi_mode_default          brblue $colorfg --bold
set __color_vi_mode_insert           brgreen $colorfg --bold
set __color_vi_mode_visual           bryellow $colorfg --bold

set __color_vagrant                  brcyan $colorfg
set __color_username                 white black
set __color_rvm                      brmagenta white --bold
set __color_virtualfish              brblue $colorfg --bold

# plugins
fundle plugin 'oh-my-fish/theme-bobthefish'
fundle plugin 'edc/bass'
fundle init