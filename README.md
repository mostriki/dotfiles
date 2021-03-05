# Dotfiles

## How to setup your dotfiles on a new laptop
- Inspect each file and customize as you see fit
- Run `.setup.sh` from the root of the `.dotfiles` folder
- Follow the prompts
- Run `source ~/.zshrc` to reload your zsh settings when it's finished

## How to update your dotfiles after initial setup
- Edit any of the `.aliases` `.functions` `.gitconfig` `.gitignore` and `.zshrc` files
- Run `./symlinks` from the root of the `.dotfiles` folder
- Run `source ~/.zshrc` to reload your zsh settings

## Fix user name and email in .gitconfig
Update the user name and email in the .gitconfig file before running `./symlinks`

### TO DO
- Uncomment #GRUB_DISABLE_RECOVERY="true" in /etc/default/grub and run sudo update-grub afterwards to disable recovery mode.