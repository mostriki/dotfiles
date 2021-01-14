autoload -U colors; colors
autoload -Uz compinit && compinit

export GOPATH=$HOME/go
export PATH=/usr/local/bin:/bin:$PATH:$GOPATH/bin
export ZSH="$HOME/.oh-my-zsh"
# export CLOUDSDK_HOME="${HOME}/google-cloud-sdk"

ZSH_THEME="avit"

plugins=(
#   gcloud
  git
  kubectl
  node
  zsh-autosuggestions
  zsh-completions
)

# load files
source .aliases
source .functions
source $ZSH/oh-my-zsh.sh

# source /Users/$(whoami)/.oh-my-zsh/custom/plugins/zsh-kubectl-prompt/kubectl.zsh
# RPROMPT='%{$fg[blue]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'

# Add pyenv init to your shell to enable shims and autocompletion
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
