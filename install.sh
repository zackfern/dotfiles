#!/bin/sh

# Codespaces-specific setups!
if [ -n "$CODESPACES" ]; then
  # Step 1: Move existing ~/.gitconfig to ~/.gitconfig.local if ~/.gitconfig.local does not exist
  if [ ! -f ~/.gitconfig.local ]; then
      mv ~/.gitconfig ~/.gitconfig.local
  fi

  # Step 2: Symlink ~/.dotfiles/gitconfig to ~/.gitconfig
  ln -sf ~/.dotfiles/gitconfig ~/.gitconfig

  # Step 3: Source ~/.dotfile/aliases within ~/.bashrc
  if ! grep -Fxq "source ~/.dotfiles/aliases" ~/.bashrc; then
    echo "source ~/.dotfiles/aliases" >> ~/.bashrc
  fi
fi
