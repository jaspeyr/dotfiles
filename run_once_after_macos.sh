#!/usr/bin/env bash
set -eu

# don't write .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
# disable automatic spell correction
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
# use column view by default in finder
defaults write com.apple.Finder FXPreferredViewStyle clmv