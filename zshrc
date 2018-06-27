ZSH=$HOME/.oh-my-zsh
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
plugins=(bundler git gitfast jsontools last-working-dir macports rails sudo wd osx ruby git-extras emoji emotty)
ZSH_THEME="steeef"
source $ZSH/oh-my-zsh.sh
source $HOME/.aliases
#ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
#ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
#ZSH_THEME_GIT_PROMPT_CLEAN=""

export M2_HOME=/usr/local/apache-maven/apache-maven-3.3.3
export M2=$M2_HOME/bin
export GOPATH=$HOME/gocode
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$M2
#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#export JAVA_HOME=$(/usr/libexec/java_home)

### Added by the Heroku Toolbelt
export PATH=/usr/local/heroku/bin:$PATH
export PATH=$PATH:$HOME/scripts

export DISPLAY="localhost:0"
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
export PATH=$PATH:/usr/lib/jvm/java-1.8.0-openjdk-amd64/bin
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
export PATH=$PATH:/usr/local/go/bin

export PATH="$HOME/bin:$HOME/.local/bin:$PATH" 
export PATH="$PATH:/mnt/c/Program\ Files/Docker\ Toolbox"

export DOCKER_TLS_VERIFY=0
export DOCKER_HOST=tcp://$(docker-machine.exe ip):2376
export DOCKER_CERT_PATH=/mnt/c/Users/jwslo/.docker/machine/machines/default
export DOCKER_MACHINE_NAME=default
export COMPOSE_CONVERT_WINDOWS_PATHS=true

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# getting-started Token
export GITHUB_TOKEN=4a0dc5961a57e95d1c9704bd34695b0c9a0b00b2
