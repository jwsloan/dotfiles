# Get the aliases and functions
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi

if [ -f ~/.git-prompt.sh ]; then
  . ~/.git-prompt.sh
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

export PROMPT_COMMAND=

#nathan's
# export PS1='\n\[\e[0;37m\].....[ \[\e[1;33m\]$(/bin/date "+%Y-%m-%d %H:%M:%S")\[\e[0;37m\] ].....[ \[\e[1;36m\]$(pwd|awk -F\/ "{print \$(NF-1),\$(NF)}" | sed "s/ /\\//")\[\e[0;37m\] ].....\n\[\e[0m\]$ '

# export PS1='\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 "\[\033[01;33m\](%s)\[\033[00m\]")$ '

# enable git unstaged indicators - set to a non-empty value
GIT_PS1_SHOWDIRTYSTATE="."
 
# enable showing of untracked files - set to a non-empty value
GIT_PS1_SHOWUNTRACKEDFILES="."
 
# enable stash checking - set to a non-empty value
GIT_PS1_SHOWSTASHSTATE="."
 
# enable showing of HEAD vs its upstream
GIT_PS1_SHOWUPSTREAM="auto"
 
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)
 
# set the prompt to show current working directory and git branch name, if it exists
 
# this prompt is a green username, black @ symbol, cyan host, magenta current working directory and white git branch (only shows if you're in a git branch)
# unstaged and untracked symbols are shown, too (see above)
# this prompt uses the short colour codes defined above

# Merge of Nathan's with the another
PS1='\n\[\e[0;37m\] ... \[\e[1;33m\]${GREEN}$(/bin/date "+%Y-%m-%d %H:%M:%S")\[\e[0;37m\] ... ${MAGENTA}\w`__git_ps1 " ... ${RED}%s ... "`\n\[\e[0m\]$ '
 
# this is a cyan username, @ symbol and host, magenta current working directory and white git branch
# it uses the shorter , but visibly more complex, codes for text colours (shorter because the colour code definitions aren't needed)
# PS1='\[33[0;36m\]\u@\h\[33[01m\]:\[33[0;35m\]\w\[33[00m\]\[33[1;30m\]\[33[0;37m\]`__git_ps1 " (%s)"`\[33[00m\]\[33[0;37m\]\$ '
 
# return the prompt prefix for the second line
function set_prefix {
    BRANCH='__git_ps1'
    if [[ -z $BRANCH ]]
    then
        echo "${NORMAL}o"
    else
        echo "${UNDERLINE}+"
    fi
}
 
# and here's one similar to Paul Irish's famous prompt ... not sure if this is the way he does it, but it works  <span class="wp-smiley emoji emoji-smile" title=":)">:)</span>
# 33[s = save cursor position
# 33[u = restore cursor position
 
# PS1='${MAGENTA}\u${WHITE} in ${GREEN}\w${WHITE}${MAGENTA}`__git_ps1 " on %s"`${WHITE}\r\n`set_prefix`${NORMAL}${CYAN}33[s33[60C (`date "+%a, %b %d %H:%M"`)33[u${WHITE} '
