# export PATH=$HOME/bin:/usr/local/bin:$PATH

# oh-my-zsh file
export ZSH="$HOME/.oh-my-zsh"

#set GOPATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

ZSH_THEME="avit-custom"
export CLOUDSDK_HOME="${HOME}/google-cloud-sdk"

plugins=(
  gcloud
  gitfast
  kubectl
  node
  npm
  zsh-autosuggestions
)

# load files
source .aliases
source .functions
source $ZSH/oh-my-zsh.sh

# Add pyenv init to your shell to enable shims and autocompletion
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
