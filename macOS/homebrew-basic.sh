#!/bin/zsh

echo "Running $0..."

which -s brews > /dev/null
if [[ $? != 0 ]] ; then
    # Install Homebrew
    echo "Installing Homebrew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    if [ $? -ne 0 ]; then
    else
        echo "Failed to bootstrap Homebrew"
        return
    fi
fi
echo ""

# For ease of commenting out some of the installs they are listed sperately
echo "Installing Homebrew Formulae..."
brew install \
awscli \
dos2unix \
pyenv \
python \
sshfs \

#  Initial list after browsing all the casks, apply a second round of checking
echo "Installing casks Formulae..."
brew cask install \
1password \
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
tunnelblick \
visual-studio-code \
vlc \
