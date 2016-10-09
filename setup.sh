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

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Markdown Previewer
brew cask install qlmarkdown

# Install the Node Version Manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
