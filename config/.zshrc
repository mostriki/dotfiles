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
source ./config/.aliases
source ./config/.functions
source $ZSH/oh-my-zsh.sh
source /Users/$(whoami)/.oh-my-zsh/custom/plugins/zsh-kubectl-prompt/kubectl.zsh

PROMPT='
$(_user_host)${_current_dir}%{$fg_bold[blue]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%} $(git_prompt_info) $(ruby_prompt_info)
%{%(!.${fg[red]}.${fg[white]})%}▶%{$reset_color%} '

# Add pyenv init to your shell to enable shims and autocompletion
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi