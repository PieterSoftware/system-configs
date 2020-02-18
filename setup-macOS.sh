#!/bin/zsh

# This scrip is intended for macOS 10.15 (Catalina) and higher

# #  Elevate priviliges early in the process
# sudo -v

#########################################
# UI Settings                           #
#########################################

# Activate dark mode adn set the accent and higlight color to green
defaults write -g AppleInterfaceStyle -string "Dark"
defaults write -g AppleAccentColor -int 3
defaults write -g AppleHighlightColor -string "0.752941 0.964706 0.678431"

