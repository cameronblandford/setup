#!/bin/bash

# Check if Homebrew is installed, if not, install it
if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Make sure we're using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install casks
brew install --cask warp
brew install --cask google-chrome
brew install --cask cursor
brew install --cask arc
brew install --cask obsidian
brew install --cask rectangle
brew install --cask hammerspoon
brew install --cask signal
brew install --cask raycast
brew install --cask docker
brew install --cask discord
brew install --cask anki
brew install --cask bartender
brew install --cask caffeine
brew install --cask bitwarden
brew install --cask insomnia
brew install --cask firefox
brew install --cask the-unarchiver
brew install --cask postgres

# Install formulae
brew install fnm
brew install hugo
brew install fish
brew install ffmpeg
brew install gh
brew install git
brew install stats

# Clean up
brew cleanup

echo "Installation complete!"