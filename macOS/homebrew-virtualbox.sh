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

#  Initial list after browsing all the casks, apply a second round of checking
echo "Installing casks Formulae"
brew cask install \
virtualbox \
virtualbox-extension-pack \
