# Dotfiles

## Fix user name and email in .gitconfig
Update the user name and email in the .gitconfig file before running `./symlinks`

## Move custom zsh theme
The `avit-custom.zsh-theme` is a custom theme that displays your current kubernetes context and namespace in the `PROMPT`. Move this file to the custom theme directory, if you want to use it.   
`$ cp /User/<name>/.oh-my-zsh/custom/theme/avit-custom.zsh-theme`

## Install Symlinks
Run `./symlinks`

## Install on new laptop
Run `.setup.sh`

### Helpful Key Combos
- `Ctrl + U` – delete from the cursor to the start of the line.
- `Ctrl + K` – delete from the cursor to the end of the line.
- `Ctrl + W` – delete from the cursor to the start of the preceding word.
- `Alt + D` – delete from the cursor to the end of the next word.
- `Ctrl + L` – clear the terminal.