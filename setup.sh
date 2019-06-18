#!/usr/bin/env bash

init () {
    # Create Projects directory in HOME (you might need to put "$(username)" in quotes)
    mkdir -p $HOME/Projects/Old

    # Creates /Users/$username/Screenshots and changes the default folder for screenshots
    mkdir -p $HOME/Screenshots/
    defaults write com.apple.screencapture location /Users/$username/screenshots/ && killall SystemUIServer

    # Enables repeating keys by pressing and holding them down
    defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
}

install_tools () {
	if [ $( echo "$OSTYPE" | grep 'darwin' ) ] ; then
		echo "This utility will install useful utilities using Homebrew"
		echo "Proceed? (y/n)"
		read resp

		if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
			echo "Installing useful stuff using brew. This may take a while..."
			sh homebrew.sh
		else
			echo "Brew installation cancelled by user"
		fi
	else
		echo "Skipping installations using Homebrew because MacOS was not detected..."
	fi
}

# Installs latest version of Xcode command line tools (NOT WORKING - INSTALL MANUALLY)
# xcode-select --install

create_symlinks () {
	echo "This utility will symlink the files in this repo to the home directory"
	echo "Proceed? (y/n)"
	read resp

	if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
		echo "This utility will create symlinks"
	    sh symlinks.sh
		echo "symlinks complete"
	else
		echo "symlinks cancelled by user"
		return 1
	fi
}

init
install_tools
create_symlinks