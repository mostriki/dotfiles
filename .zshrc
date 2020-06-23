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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

autoload -U colors; colors
source ~/.dotfiles/kubectl.zsh
RPROMPT='%{$fg[blue]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mostriki/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mostriki/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mostriki/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mostriki/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
