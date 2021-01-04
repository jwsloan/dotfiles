
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

ZSH=$HOME/.oh-my-zsh
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/john.sloan/.zshrc'

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
plugins=(git gitfast jsontools last-working-dir pipenv sudo wd osx git-prompt git-extras emoji emotty)
ZSH_THEME="avit"
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
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=$PATH:$HOME/scripts
# export PATH="~/miniconda3/bin:$PATH"  # commented out by conda initialize
export XOI_STAGE=johnsloan
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/johnsloan/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/johnsloan/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/johnsloan/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/johnsloan/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/johnsloan/projects/vision-stratus/vision-nx-mobile-combined/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/johnsloan/projects/vision-stratus/vision-nx-mobile-combined/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/johnsloan/projects/vision-stratus/vision-nx-mobile-combined/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/johnsloan/projects/vision-stratus/vision-nx-mobile-combined/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/johnsloan/projects/vision-stratus/vision-nx-jobs/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/johnsloan/projects/vision-stratus/vision-nx-jobs/node_modules/tabtab/.completions/slss.zsh

. /usr/local/opt/asdf/asdf.sh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
