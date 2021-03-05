#!/usr/bin/env bash

read -rp "Press any key to continue... " -n1 -s
printf '\n'

if ! type brew > /dev/null 2 > /dev/null
    then
        echo "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        
        echo "export PATH='/usr/local/bin:$PATH'" >> ~/.bash_profile
     else
        echo "Something went wrong. Exiting..." && exit 1
fi

# Ensure brew is running
brew doctor

# Update existing homebrew recipes
brew update

# Upgrade installed formulae
brew upgrade

# Install cask
brew tap caskroom/cask

# Coreutils
brew install coreutils

# -----------------------------------------
# Apple developer tools
# -----------------------------------------

xcode-select --install

# -----------------------------------------
# Git
# -----------------------------------------

brew install git

echo "Please type in your Git username, ie. Rowdy McFlurry: \c"
read -r gitUserName

echo "The Git username you entered is: ${gitUserName}"
git config --global user.name "$gitUserName"

echo "Your Git username is: "
git config --global user.name

echo "Please type in your Git email: "
read -r email

echo "The Git email you entered is: ${email}"
git config --global user.email "$email"

echo "Your Git email is: "
git config --global user.email

# -----------------------------------------
# ZSH Shell
# -----------------------------------------

brew install --cask iterm2

brew install zsh

chsh -s /usr/local/bin/zsh
echo "The default shell is echo ${SHELL}"

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing custom ZSH plugins and themes"
git clone https://github.com/zsh-users/zsh-completions "${ZSH_CUSTOM:=~/.oh-my-zsh/custom}"/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions
git clone git@github.com:superbrothers/zsh-kubectl-prompt.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-kubectl-prompt

# -----------------------------------------
# Command-line Tools
# -----------------------------------------

brew install ack
brew install git-lfs
brew install fzf
brew install tree

# -----------------------------------------
# Programming Languages and Frameworks
# -----------------------------------------

brew install node
brew install typescript
brew install golang

# -----------------------------------------
# Applications and Tools
# -----------------------------------------

brew install --cask docker
brew install --cask dropbox
brew install --cask google-chrome
brew install --cask postman
brew install --cask spectacle
brew install --cask spotify
brew install --cask vlc
brew install --cask pdftk

brew install ansible
brew install k9s
brew install helm
brew install jq
brew install kustomize
brew install packer
brew install pyenv
brew install terraform
brew install vim

# -----------------------------------------
# QuickLook Plugins
# -----------------------------------------

brew install --cask qlcolorcode
brew install --cask qlimagesize
brew install --cask qlmarkdown
brew install --cask qlvideo
brew install --cask quicklook-csv
brew install --cask quicklook-json
brew install --cask suspicious-package

# -----------------------------------------
# Productivity and Utility Applications
# -----------------------------------------

brew install --cask android-file-transfer
brew install --cask appcleaner
brew install --cask coconutbattery
brew install --cask little-snitch
brew install --cask the-unarchiver

# -----------------------------------------
# Misc
# -----------------------------------------

# Remove outdated version cruft
brew cleanup
