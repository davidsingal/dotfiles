#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
  rsync -avh --no-perms ./ubuntu/ ~;

  rsync --exclude ".git/" \
    --exclude ".DS_Store" \
    --exclude "install.sh" \
    --exclude "install_ubuntu.sh" \
    --exclude "apt.sh" \
    --exclude "brew.sh" \
    --exclude "remove_brew.sh" \
    --exclude "sublime" \
    --exclude "vscode" \
    --exclude "README.md" \
    --exclude "LICENSE" \
    --exclude ".bash_profile" \
    --exclude ".aliases" \
    --exclude "ubuntu" \
    -avh --no-perms . ~;

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
