echo 'bashrc'
# Source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi

# User specific aliases and functions
#function go { `awk -v val=^$1$ '$1!~/^[:space:]*#/ && $1~val  { print "cd "$2 }' ~/.go_shortcuts`; }


source ~/git-completion.bash



exec `which zsh`

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
