export EDITOR=vi
export ANT_OPTS=-Xmx640m
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:/usr/X11/bin:/usr/local/mysql/bin

set -o vi

[[ `uname` == 'Linux' ]] && alias ls='ls --color=auto'

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

export CLICOLOR=yes
export TERM=xterm-color
alias RED='tput setaf 1'
alias GREEN='tput setaf 2'
alias YELLOW='tput setaf 3'
alias RESET='tput sgr0'
function __rvm_ps1 {
  printf "(%s) " "$(~/.rvm/bin/rvm-prompt i v g s)" | sed s/^\(system\)\ $//
}
export PS1='\[$(RED)\]$(__rvm_ps1)\[$(GREEN)\]\h:\[$(RESET)\]\w\[$(YELLOW)\]$(__git_ps1)\[$(RESET)\] $ '
source ~/.git-completion.bash
