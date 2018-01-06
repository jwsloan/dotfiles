# Source global definitions
#if [ -f /etc/bashrc ]; then
#. /etc/bashrc
#fi

# User specific aliases and functions
#function go { `awk -v val=^$1$ '$1!~/^[:space:]*#/ && $1~val  { print "cd "$2 }' ~/.go_shortcuts`; }


#source ~/git-completion.bash


#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

exec `which zsh`

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
   # Start the docker machine
  export VBOX_MSI_INSTALL_PATH='/c/Program Files/Oracle/VirtualBox/'
  pushd '/c/Program Files/Docker Toolbox/' > /dev/null
  ./start.sh exit
  # Get env variables from docker-machine, convert paths, ignore comments, and strip double quotes. 
  $(./docker-machine.exe env --shell bash | sed 's/C:/\/c/' | sed 's/\\/\//g' | sed 's:#.*$::g' | sed 's/"//g' )
  popd > /dev/null
  # Change /mnt/c/ to /c/ in current working directory path
  cd $(pwd | sed 's/\/mnt\/c\//\/c\//')
