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

### Helpful ZSH Shortcuts
- `Ctrl + U` – delete from the cursor to the start of the line.
- `Ctrl + K` – delete from the cursor to the end of the line.
- `Ctrl + W` – delete from the cursor to the start of the preceding word.
- `Alt + D` – delete from the cursor to the end of the next word.
- `Ctrl + L` – clear the terminal.