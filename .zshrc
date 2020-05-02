
setopt NO_CASE_GLOB
setopt AUTO_CD

HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS

alias ezsh='vim ~/config/.zshrc'
alias ll='ls -la'
alias lf='ls -lt | head -10'
