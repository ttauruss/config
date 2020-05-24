
setopt NO_CASE_GLOB
setopt AUTO_CD

HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS

#setopt CORRECT
#setopt CORRECT_ALL

bindkey -v

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

autoload -Uz compinit && compinit

PROMPT='%B%F{blue}%2/%f%b %# '

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git
