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
python \
pyenv \
awscli \
sshfs \ # Note it requires osxfuse cask (insalled bellow) to run

#  Initial list after browsing all the casks, apply a second round of checking
echo "Installing casks Formulae"
brew cask install \
1password \
adapter \
aws-vault \
basictex \
brave-browser \
caffeine \
chromium \
clockify \
daisydisk \
divvy \
docker \
doxygen \
drawio \
dropbox \
firefox \
fork \
gitkraken \
google-chrome \
gpg-suite \
intel-power-gadget \
istat-menus \
iterm2 \
joshaven-winbox \
kaleidoscope \
macdown \
osxfuse \
postman \
private-internet-access \
protonmail-bridge \
protonvpn \
serial \
sourcetree \
sublime-merge \
sublime-text \
teamviewer \
telegram \
tex-live-utility \
tunnelblick \
tuxera-ntfs \
veracrypt \
virtualbox \
virtualbox-extension-pack \
visual-studio-code \
vlc \
wireshark \
xca \
