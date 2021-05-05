#!/usr/bin/env bash

init () {
  echo "Please type in your email address: "
  read -r email
  echo "The email you entered is ${email}"

	echo "Is that correct? (y/n): "
	read -r resp

	if [ "$resp" = 'y' ] || [ "$resp" = 'Y' ]; then
    #  Create Projects directory in HOME (you might need to put "$(username)" in quotes)
    mkdir -p "$HOME"/Projects/

    #  Creates /Users/$username/Pictures and changes the default folder for screenshots
    defaults write com.apple.screencapture location /Users/"$(whoami)"/Pictures/ && killall SystemUIServer

    #  Enables repeating keys by pressing and holding them down
    defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

	else
		echo "Your email is incorrect. Try again."
		return 1
	fi
}

#create_ssh_keys () {
#  SSH_FILE="${HOME}/.ssh"
#  SSH_CONFIG="${HOME}/.ssh/config/"
#
#  if [ ! -d "$SSH_FILE" ]; then
#    ssh-keygen -t ed25519 -C "${email}"
#    ssh-keygen -t ed25519 -f "${HOME}"/.ssh/other_ed25519 -C "${email}"
#  fi
#
#  if [ ! -f "$SSH_CONFIG" ]; then
#    touch ~/.ssh/config
#
#  fi
#}

install_tools () {
	if echo "$OSTYPE" | grep -q 'darwin'; then
		echo "This utility will install useful utilities using Homebrew"
		echo "Proceed? (y/n)"
		read -r resp

		if [ "$resp" = 'y' ] || [ "$resp" = 'Y' ]; then
			echo "Installing useful stuff using brew. This may take a while..."
			sh homebrew.sh
		else
			echo "Brew installation cancelled by user"
		fi
	else
		echo "Skipping installations using Homebrew because MacOS was not detected..."
	fi
}

create_symlinks () {
	echo "This utility will symlink the files in this repo to the home directory"
	echo "Proceed? (y/n)"
	read -r resp

	if [ "$resp" = 'y' ] || [ "$resp" = 'Y' ]; then
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
