# Source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi

# User specific aliases and functions
#function go { `awk -v val=^$1$ '$1!~/^[:space:]*#/ && $1~val  { print "cd "$2 }' ~/.go_shortcuts`; }


source ~/git-completion.bash


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

exec `which zsh`
