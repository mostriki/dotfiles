export ZSH="/Users/$(whoami)/.oh-my-zsh"
# export CLOUDSDK_HOME="${HOME}/google-cloud-sdk"

# set PATH
export GOPATH=$HOME/go
export PATH=$HOME/bin:/usr/local/bin:$PATH:$GOPATH/bin

ZSH_THEME="avit-custom"

plugins=(
#   gcloud
  gitfast
  kubectl
  node
  npm
  zsh-autosuggestions
  zsh-completions
)

autoload -U compinit && compinit

# load files
source .aliases
source .functions
source $ZSH/oh-my-zsh.sh

# Add pyenv init to your shell to enable shims and autocompletion
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
