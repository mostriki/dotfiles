#!/bin/bash

# Creates a code directory in the users home directory (you might need to put "$(username)" in quotes)
echo "Please type in your username: \c"
read username
echo "The username you entered is: $username"
mkdir -p /Users/$username/Code/Old

# Creates /Users/$username/Screenshots and changes the default folder for screenshots
mkdir -p /Users/$username/Screenshots/
defaults write com.apple.screencapture location /Users/$username/screenshots/ && killall SystemUIServer

# Enables repeating keys by pressing and holding them down
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Installs latest version of Xcode command line tools
xcode-select --install

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

—
# These variables need to be entered
# git config --global user.name "Padma Patil"
# git config --global user.email "padma@email.com"

# Tell git to use the gitignore file for all projects
git config --global core.excludesfile ~/.gitignore_global
—

# Install mas
brew install mas  # A simple command line interface for the Mac App Store. Designed for scripting and automation.

# Install node
brew install node

# Mac App Store Applications
# mas install 425264550 Blackmagic Disk Speed Test (3.1)
# mas install 490192174 Battery Health (6.1)
# mas install 417375580 BetterSnapTool (1.9)
# mas install 409183694 Keynote (8.2)
# mas install 405399194 Kindle (1.23.3)
# mas install 926036361 LastPass (4.1.0)
# mas install 425424353 The Unarchiver (4.0.0)
# mas install 1085114709 Parallels Desktop Lite (1.3.3)
# mas install 490152466 iBooks Author (2.6.1)
# mas install 961632517 Be Focused Pro (1.7.4)
# mas install 409203825 Numbers (5.2)
# mas install 497799835 Xcode (10.0)
# mas install 409201541 Pages (7.2)
# mas install 865500966 feedly (1.1)
# mas install 408981434 iMovie (10.1.9)
# mas install 939343785 Icon Set Creator (1.1.11)
# mas install 568434047 Todo Cloud (3.0.7)
# mas install 913724705 Disk Care (1.5.1)
# mas install 1014850245 Monit (1.2.1)
# mas install 803453959 Slack (3.3.2)
# mas install 715768417 Microsoft Remote Desktop (8.0.30030)
mas upgrade

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

# Dev Applications
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

# Home/Productivity/Utility Applications
# brew cask install appcleaner
# brew cask install coconutbattery
# brew cask install little-snitch
# brew cask install the-unarchiver
# brew cask install android-file-transfer

# Remove brew cruft
brew cleanup
