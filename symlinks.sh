#!/usr/bin/env bash

dir=~/.dotfiles
files=".aliases .functions .gitconfig .gitignore .zshrc"

# Change to the dotfiles directory
echo "Changing to the ${dir} directory"
cd ${dir} || exit

# Create symlinks
for file in $files; do
  echo "Creating symlink to $file in home directory."
  ln -sfv ${dir}/config/"${file}" ~/"${file}"
  echo "- -"
done
