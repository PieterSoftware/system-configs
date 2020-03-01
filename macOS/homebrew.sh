#!/bin/zsh

echo "Installing Homebrew and various formulae and casks..."

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo ""

if [ $? -ne 0 ]; then
else
    echo "Failed to bootstrap Homebrew"
    return
fi

# For ease of commenting out some of the installs they are listed sperately
echo "Installing Homebrew Formulae"
brew install \
awscli \
dos2unix \
pyenv \
python \
sshfs \

#  Initial list after browsing all the casks, apply a second round of checking
echo "Installing casks Formulae"
brew cask install \
1password \
basictex \
brave-browser \
caffeine \
daisydisk \
divvy \
dropbox \
firefox \
intel-power-gadget \
istat-menus \
iterm2 \
joshaven-winbox \
kaleidoscope \
onedrive \
osxfuse \
postman \
serial \
sourcetree \
tex-live-utility \
tunnelblick \
virtualbox \
virtualbox-extension-pack \
visual-studio-code \
vlc \
