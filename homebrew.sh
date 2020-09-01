#!/usr/bin/env bash

read -p "Press any key to continue... " -n1 -s
echo '\n'

if ! type brew > /dev/null 2 > /dev/null
    then
        echo "Installing Homebrew..."
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

        echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
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
# Git
# -----------------------------------------

brew install git

# Color code Git information in the terminal 
git config --global color.ui true

# Install and tell git to use the github recommended .gitignore for macOS
curl https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore -o ~/.gitignore
git config --global core.excludesfile ~/.gitignore_global

echo "Please type in your Git useername, ie. Rowdy McFlurry: \c"
read gitUserName

echo "The Git username you entered is: ${gitUserName}"
git config --global user.name $gitUserName

echo "Your Git username is: "
git config --global user.name

echo "Please type in your Git email: "
read email

echo "The Git email you entered is: ${email}"
git config --global user.email $email

echo "Your Git email is: "
git config --global user.email

# -----------------------------------------
# Command-line Tools
# -----------------------------------------

brew install ack
brew install git-lfs
brew install fzf
brew install tree
brew install zsh zsh-completions

# make zsh the default shell
chsh -s $(which zsh)

echo "The default shell is echo ${SHELL}"

# -----------------------------------------
# Programming Languages and Frameworks
# -----------------------------------------

brew install node
brew install typescript
brew install golang

# -----------------------------------------
# Applications and Tools
# -----------------------------------------

brew cask install docker
brew cask install dropbox
brew cask install google-chrome
brew cask install iterm2
brew cask install postman
brew cask install slack
brew cask install spectacle
brew cask install spotify
brew cask install vlc
# brew cask install pdftk

brew install ansible
brew install jq
brew install packer
brew install pyenv
brew install terraform
brew install terraformer
brew install vim

# -----------------------------------------
# Quick Look Plugins
# -----------------------------------------

brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install qlmarkdown
brew cask install qlstephen
brew cask install qlvideo
brew cask install quicklookase
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install suspicious-package
brew cask install webpquicklook

# -----------------------------------------
# Productivity and Utility Applications
# -----------------------------------------

brew cask install android-file-transfer
brew cask install appcleaner
brew cask install coconutbattery
brew cask install little-snitch
brew cask install the-unarchiver

# -----------------------------------------
# Misc
# -----------------------------------------

# Remove outdated version cruft
brew cleanup
