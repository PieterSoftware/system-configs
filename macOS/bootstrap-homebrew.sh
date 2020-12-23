#!/bin/zsh

echo "Running $0..."

which -s brews > /dev/null
if [[ $? != 0 ]] ; then
    # Install Homebrew
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    if [ $? -ne 0 ]; then
    else
        echo "Failed to bootstrap Homebrew"
        return
    fi
fi
echo ""

brew bundle --file ./init/Brewfile
