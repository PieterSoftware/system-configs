#!/bin/zsh

# Sets reasonable macOS defaults.

# Or, in other words, how I like in macOS.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.macos
#   https://github.com/holman/dotfiles/blob/master/macos/set-defaults.sh
#
# Usage ./set-defaults.sh

echo 'Configuring macOS defaults...'

# Close any open System Preferences panes
osascript -e 'tell application "System Preferences" to quit'


#########################################
# UI Settings                           #
#########################################

# Activate dark mode
defaults write -g AppleInterfaceStyle -string "Dark"

# # Auto switch between Light and Dark mode
# defaults write -g AppleInterfaceStyleSwitchesAutomatically -int 1

# Set the accent color to green
defaults write -g AppleAccentColor -int 3

# Set the higlight color to green
defaults write -g AppleHighlightColor -string "0.752941 0.964706 0.678431"

# Increase window resize speed for Cocoa applications
defaults write -g NSWindowResizeTime -float 0.001

# Expand save panel by default
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true
defaults write -g NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write -g PMPrintingExpandedStateForPrint -bool true
defaults write -g PMPrintingExpandedStateForPrint2 -bool true

# Save to disk (not to iCloud) by default
defaults write -g NSDocumentSaveNewDocumentsToCloud -bool false

# Display ASCII control characters using caret notation in standard text views
# Try e.g. `cd /tmp; unidecode "\x{0000}" > cc.txt; open -e cc.txt`
defaults write -g NSTextShowsControlCharacters -bool true


#########################################
# Accessories Settings                  #
#########################################

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write -g AppleKeyboardUIMode -int 3


#########################################
# General Settings                      #
#########################################

# Disable OS X logging of downloaded files
# Visit http://www.macgasm.net/2013/01/18/good-morning-your-mac-keeps-a-log-of-all-your-downloads/
defaults write com.apple.LaunchServices LSQuarantine -bool false


#########################################
# Finder Settings                       #
#########################################

# Use AirDrop over every interface.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Finder: show hidden files by default
# defaults write com.apple.finder AppleShowAllFiles -bool

# Finder: show all filename extensions
defaults write -g AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Always empty trash securely
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Show the ~/Library folder.
chflags nohidden ~/Library

# Show the /Volumes folder
chflags nohidden /Volumes


#########################################
# Screen Settings                       #
#########################################

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true


#########################################
# Dock, Dashboard, and hot corners      #
#########################################

# Enable highlight hover effect for the grid view of a stack (Dock)
defaults write com.apple.dock mouse-over-hilite-stack -bool true

# Set the icon size of Dock items to 45 pixels
defaults write com.apple.dock tilesize -int 45

# Change minimize/maximize window effect
defaults write com.apple.dock mineffect -string "scale"

# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0

# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Disable the Launchpad gesture (pinch with thumb and three fingers)
defaults write com.apple.dock showLaunchpadGestureEnabled -int 0

# Run the screensaver if we're in the bottom-left hot corner.
# defaults write com.apple.dock wvous-bl-corner -int 5
# defaults write com.apple.dock wvous-bl-modifier -int 0


#########################################
# Email Settings                        #
#########################################

# Disable send and reply animations in Mail.app
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true

#Copy email addresses as 'foo@example.com' instead of 'Foo Bar <foo@example.com>' in Mail.app#
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Display emails in threaded mode, sorted by date (oldest at the top)
defaults write com.apple.mail DraftsViewerAttributes -dict-add "DisplayInThreadedMode" -string "yes"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortedDescending" -string "yes"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortOrder" -string "received-date"

# Disable inline attachments (just show the icons)
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true


#########################################
# Activity Monitor                      #
#########################################

# Show the main window when launching Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0


#########################################
# Mac App Store                         #
#########################################

# Enable the automatic update check
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Download newly available updates in background
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

# Install System data files & security updates
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

# Automatically download apps purchased on other Macs
defaults write com.apple.SoftwareUpdate ConfigDataInstall -int 0

# Turn on app auto-update
defaults write com.apple.commerce AutoUpdate -bool true

# Allow the App Store to reboot machine on macOS updates
defaults write com.apple.commerce AutoUpdateRestartRequired -bool true


#########################################
# Photos                                #
#########################################

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true


#########################################
# Messages                              #
#########################################

# Disable automatic emoji substitution (i.e. use plain text smileys)
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticEmojiSubstitutionEnablediMessage" -bool false

# Disable smart quotes as it’s annoying for messages that contain code
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticQuoteSubstitutionEnabled" -bool false

# Disable continuous spell checking
# defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false



#########################################
# Safari                                #
#########################################

# Show Safari's bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool true

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true


echo 'Configuration complete.'
echo 'Note that restarting the affected apps will probably be good enough but,'
echo 'a restart is recommended for all settings to take effect.'
