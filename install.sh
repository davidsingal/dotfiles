#!/usr/bin/env bash

mkdir -p -f ~/.vim/backups
mkdir -p -f ~/.vim/swaps
mkdir -p -f ~/.vim/undo
mkdir -p -f ~/.vim/colors

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "install.sh" \
    --exclude "brew.sh" \
    --exclude "README.md" --exclude "LICENSE" -avh --no-perms . ~;
  source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt;
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
  fi;
fi;

unset doIt;
