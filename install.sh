#!/bin/sh

DIR=$(pwd -P "$0")

# Codespaces-specific setups!
if [ -n "$CODESPACES" ]; then
  # Step 1: Move existing ~/.gitconfig to ~/.gitconfig.local if ~/.gitconfig.local does not exist
  if [ ! -f ~/.gitconfig.local ]; then
      mv ~/.gitconfig ~/.gitconfig.local
  fi

  # Step 2: Symlink ~/.dotfiles/gitconfig to ~/.gitconfig
  ln -sf "$DIR"/gitconfig ~/.gitconfig

  # Step 3: Source ~/.dotfile/aliases within ~/.bashrc
  if ! grep -Fxq "source $DIR/aliases" ~/.bashrc; then
    echo "source "$DIR"/aliases" >> ~/.bashrc
  fi

  # Step 4: Import gh aliases:
  gh alias import "$DIR/gh-aliases.yml"
fi
