# export PATH=$HOME/bin:/usr/local/bin:$PATH

# oh-my-zsh file
export ZSH="$HOME/.oh-my-zsh"

# zsh theme
ZSH_THEME="avit"

# zsh standard plugins
plugins=(
  gitfast
)

# load files
source .aliases
source .functions
source $ZSH/oh-my-zsh.sh

# zsh-kubectl-prompt (https://github.com/superbrothers/zsh-kubectl-prompt)
autoload -U colors; colors
source ~/dotfiles/kube-prompt.zsh
RPROMPT='%{$fg[blue]%}($ZSH_KUBECTL_PROMPT)%{$reset_color%}'

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
