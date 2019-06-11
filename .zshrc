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
source $ZSH/oh-my-zsh.sh
source .aliases

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
