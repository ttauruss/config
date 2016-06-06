alias ga='git add -A'
alias eb='vim ~/.bashrc'
alias gpush='git push origin master'
alias gpull='git pull origin master'
alias g11='g++ -std=c++11'
alias lf='ls -lt | head -n 10'
alias glog='git log --pretty=oneline'

function send_attach_to_me
{
  uuencode $1 $1 | mailx -s "$1" ttauruss@gmail.com
}

function rm
{
  mv $1 ~/backup
}
