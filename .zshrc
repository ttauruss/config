
setopt NO_CASE_GLOB
setopt AUTO_CD

HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
#setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS

SAVEHIST=5000
HISTSIZE=2000

#setopt CORRECT
#setopt CORRECT_ALL

bindkey -v
bindkey '^R' history-incremental-search-backward

alias ezsh='vim ~/config/.zshrc'
alias ll='ls -la'
alias lf='ls -lt | head -10'
alias g17='g++ -std=c++17'
alias run='python3 ~/config/run.py'
alias ctags='`brew --prefix`/bin/ctags'
alias show_gcc_include_path='echo "" | gcc -xc - -v -E'

# aliases can be made global and used anywhere in the command line
# alias -g ll='ls -la'
# sudo ll

function rm
{
  echo "Use trash"
}

function python
{
  echo "Use python3"
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

