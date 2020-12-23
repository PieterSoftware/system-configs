#!/bin/zsh

echo "Running $0..."

which -s brews > /dev/null
if [[ $? != 0 ]] ; then
    echo "Homebrew was not found on the system."
fi
echo ""

#  Initial list after browsing all the casks, apply a second round of checking
echo "Installing casks Formulae"
brew cask install \
virtualbox \
virtualbox-extension-pack \
