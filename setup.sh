#! /bin/bash

# Faster key repeat rate:
defaults write NSGlobalDomain InitialKeyRepeat -int 4

## Faster dock hiding and revealing:
# Faster transition
defaults write com.apple.dock autohide-time-modifier -float 0.3
# Lower wait to transition
defaults write com.apple.Dock autohide-delay -int 0
# Reset dock
killall Dock

# Create ~/iCloud symlink
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/ ~/iCloud
