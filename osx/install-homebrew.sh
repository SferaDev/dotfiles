#!/bin/bash

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Tap cask repositories
brew tap homebrew/cask
brew tap homebrew/cask-versions

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/sfera/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
