#!/bin/bash

# Install xcode tools (git, make, etc...)
xcode-select --install

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Tap cask repositories
brew tap homebrew/cask
brew tap homebrew/cask-versions

# Install brew apps
cat brew-apps.txt | while read -r package || [[ -n $package ]];
do
    brew install $package
done

# Install MacOS apps
cat mas-apps.txt | while read -r package || [[ "$line" =~ ^#.*$ ]];
do
    mas install $package
done
