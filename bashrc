alias ls='ls --color'
alias ll='ls -lF'
alias lf='ls -lt | head -n 10'
alias eb='vim ~/.bashrc'
alias gpush='git push origin master'
alias gpull='git pull origin master'
alias tr='trash-put'
alias tmls='tmux list-sessions'
alias tma='tmux attach-session -t'

# 1 - bold, 38;5;<color> - foreground color, 48;5;<color> - background color
# wrap each color change in \[..\]
export PS1='\[\e[1;38;5;34m\u\]\[\e[m\]:\[\e[1;38;5;127m\]\w\[\e[m\] $ '

function send_attach_to_me
{
  uuencode $1 $1 | mailx -s "$1" ttauruss@gmail.com
}

function rm
{
  echo "Use trash"
}
