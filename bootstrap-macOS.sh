#!/bin/zsh

echo ""
echo ""
echo "Starting the bootstrap process..."
echo ""

scripts="macOS/bootstrapHomebrewAndApps.sh
macOS/setDefaults.sh"

for script in ${scripts}
do
    echo ""
    source ${scripts}
    echo ""
done

echo "Bootstrap completed."
