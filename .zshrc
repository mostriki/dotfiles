export GOPATH=$HOME/go
export PATH=/usr/local/bin:/bin:$PATH:$GOPATH/bin
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="avit"

plugins=(
  git
  kubectl
  node
  zsh-autosuggestions
  zsh-completions
)

autoload -Uz compinit && compinit

# load files
source .aliases
source .functions
source $ZSH/oh-my-zsh.sh
# source /usr/local/Cellar/kube-ps1/0.7.0/share/kube-ps1.sh

# KUBE_PS1_SYMBOL_ENABLE='false'
# KUBE_PS1_CTX_COLOR='cyan'
# PROMPT='
# $(_user_host)${_current_dir}$(kube_ps1) $(git_prompt_info) $(ruby_prompt_info)
# %{%(!.${fg[red]}.${fg[white]})%}▶%{$reset_color%} '

# Add pyenv init to your shell to enable shims and autocompletion
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
