#!/bin/bash

echo ""
echo ""
echo "Starting the bootstrap process..."
echo ""

scripts="homebrew.sh
setDefaults.sh"

for script in ${scripts}
do
    echo ""
    source ${scripts}
    echo ""
done

# Configure iStat Menus
cp ./init/com.bjango.istatmenus6.extras.plist ~/Library/Preferences/

echo "Bootstrap completed."
