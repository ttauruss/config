
setopt NO_CASE_GLOB
setopt AUTO_CD

HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS

setopt CORRECT
setopt CORRECT_ALL

alias ezsh='vim ~/config/.zshrc'
alias ll='ls -la'
alias lf='ls -lt | head -10'

# aliases can be made global and used anywhere in the command line
# alias -g ll='ls -la'
# sudo ll

function rm
{
  echo "Use trash"
}
