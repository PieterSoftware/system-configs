#!/bin/zsh

echo ""
echo ""
echo "Starting the bootstrap process..."
echo ""

configFile="homebrew-basic.sh
setDefaults.sh"

for script in ${configFile}
do
    echo ""
    source ${scripts}
    echo ""
done

echo "Bootstrap completed."
