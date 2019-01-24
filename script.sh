#!/bin/bash

# Creates a Projects directory in the users home directory (you might need to put "$(username)" in quotes)
echo "Please type in your username: \c"
read username
echo "The username you entered is: $username"
mkdir -p /Users/$username/Projects/Old

# Creates /Users/$username/Screenshots and changes the default folder for screenshots
mkdir -p /Users/$username/Screenshots/
defaults write com.apple.screencapture location /Users/$username/screenshots/ && killall SystemUIServer

# Enables repeating keys by pressing and holding them down
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Installs latest version of Xcode command line tools (NOT WORKING - INSTALL MANUALLY)
# xcode-select --install

# This script installs Homebrew
read -p "Press any key to continue... " -n1 -s
echo '\n'

# Check that Homebrew is installed and install if not
if ! type brew > /dev/null 2 > /dev/null
then
  echo "Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
fi

# Ensure that brew is running
brew doctor

# Update any existing homebrew recipes
brew update

# Upgrade any already installed formulae
brew upgrade --all

# Install cask
brew tap caskroom/cask

# Install git
brew install git

# Color code Git information in the terminal 
git config --global color.ui true

echo "Please type in your full name, ie. Rowdy McFlurry: \c"
read fullName
echo "The username you entered is: $fullName"
git config --global user.name $fullName

echo "Please type in your email: \c"
read email
echo "The username you entered is: $email"
git config --global user.email $email

# Install and tell git to use the github recommended gitignore for macOS
curl https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore -o ~/.gitignore
git config --global core.excludesfile ~/.gitignore_global

# Install languages and frameworks
brew install node

# Install all the Quick Look Plugins
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlimagesize
brew cask install webpquicklook
brew cask install suspicious-package
brew cask install quicklookase
brew cask install qlvideo
brew cask install quicklook-csv

# Install dev applications
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

# Install command-line tools
brew install tree
brew install fzf
brew install ack

# Home/Productivity/Utility Applications
 brew cask install appcleaner
 brew cask install coconutbattery
 brew cask install little-snitch
 brew cask install the-unarchiver
 brew cask install android-file-transfer

# Remove brew cruft
brew cleanup
