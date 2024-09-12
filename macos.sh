#!/bin/bash

# Comprehensive macOS Settings Script for Power Users and Developers

# Dock settings
# Auto-hide the Dock
defaults write com.apple.dock autohide -bool true
# Set the icon size of Dock items
defaults write com.apple.dock tilesize -int 36
# Enable magnification for the Dock
defaults write com.apple.dock magnification -bool true
# Set the magnification size of Dock items
defaults write com.apple.dock largesize -int 64
# Change autohide dock time
defaults write com.apple.dock "autohide-time-modifier" -float "0" && killall Dock

# desktop
# hide all icons
defaults write com.apple.finder "CreateDesktop" -bool "false" && killall Finder


# Finder settings
# Show path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true
# Show status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true
# Show full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# Show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true
# Display full POSIX path in Finder title bar
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
# search searches current folder
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf" && killall Finder


# Screenshot settings
# Set screenshot save location to Desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"
# Set screenshot format to PNG
defaults write com.apple.screencapture type -string "png"
# dont add date to file name
defaults write com.apple.screencapture "include-date" -bool "false"


# Keyboard settings
# Set a fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2
# Set a short delay until repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 15
# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Trackpad settings
# Enable tap to click for the current user and the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Terminal settings
# Use UTF-8 encoding
defaults write com.apple.terminal StringEncodings -array 4

# TextEdit settings
# Use plain text mode for new documents
defaults write com.apple.TextEdit RichText -int 0
# Open and save files as UTF-8 encoding
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

# System settings
# Disable the "Are you sure you want to open this application?" dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false
# Enable full keyboard access for all controls
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1
# Don't automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Disable the "Are you sure you want to open this application?" dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable automatic capitalization
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Restart affected applications
for app in "Dock" "Finder" "Safari" "Terminal" "SystemUIServer"; do
    killall "${app}" &> /dev/null
done

echo "Settings have been applied. Some changes may require a logout/restart to take effect."