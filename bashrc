alias rm='rm -i'
alias gst='git status'
alias ga='git add -A'
alias eb='vim ~/.bashrc'
alias gpush='git push origin master'
alias gpull='git pull origin master'
alias g11='g++ -std=c++11'

function send_attach_to_me
{
  uuencode $1 $1 | mailx -s "$1" ttauruss@gmail.com
}
