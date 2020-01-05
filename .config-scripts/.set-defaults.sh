#!/usr/bin/env bash
echo "start $HOME/.config-scripts/set-defaults.sh"

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Don't pop up suggestions in hyper
defaults write co.zeit.hyper ApplePressAndHoldEnabled -bool false

# Quicker navigation in editors (https://apple.stackexchange.com/a/83923)
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

