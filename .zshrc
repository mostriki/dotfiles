# export PATH=$HOME/bin:/usr/local/bin:$PATH

# oh-my-zsh file
export ZSH="$HOME/.oh-my-zsh"

#set GOPATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

ZSH_THEME="avit-custom"

plugins=(
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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mostriki/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mostriki/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mostriki/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mostriki/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# Add pyenv init to your shell to enable shims and autocompletion
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
