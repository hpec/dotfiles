# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias open="xdg-open"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)

# Example format: plugins=(rails git textmate ruby lighthouse)a


plugins=(git python pip compleat  extract)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/hit9/.rvm/bin

export TERM=screen-256color

# dircolors-solarized : https://github.com/seebi/dircolors-solarized
eval `dircolors ~/dircolors.256dark`

# alias for reload zshrc
alias reload!='. ~/.zshrc'
# alias for quick server
alias pyserver='python -m SimpleHTTPServer'
# get file size
alias sizeof='stat -c %s'

# powerline-shell
function powerline_precmd() {
  export PS1="$(powerline-bash.py $? --shell zsh)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

install_powerline_precmd


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### for rvm
source /home/hit9/.rvm/scripts/rvm

### for gvm
source $HOME/.gvm/scripts/gvm

# go path
export GOROOT=$HOME/go-lang
export GOPATH=$HOME/GoCode
export PATH=$PATH:$GOROOT/bin
export PATH=${PATH}:$HOME/ad/platform-tools
