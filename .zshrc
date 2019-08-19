# export PATH=$HOME/bin:/usr/local/bin:$PATH

# oh-my-zsh file
export ZSH="$HOME/.oh-my-zsh"

#set GOPATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# zsh theme
ZSH_THEME="avit"

# zsh standard plugins
plugins=(
  gitfast
  kubectl
)

# load files
source .aliases
source .functions
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

autoload -U colors; colors
source ~/.dotfiles/kubectl.zsh
RPROMPT='%{$fg[blue]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'
