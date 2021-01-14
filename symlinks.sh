#!/usr/bin/env bash

dir=~/.dotfiles
files=".aliases .functions .gitconfig .gitignore .zshrc"

# Change to the dotfiles directory
echo "Changing to the ${dir} directory"
cd ${dir}

# Create symlinks
for file in $(echo $files); do
  echo "Creating symlink to $file in home directory."
  ln -sfv ${dir}/${file} ~/${file}
  echo "- - -"
done
