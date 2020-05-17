#!/bin/bash

echo ""
echo ""
echo "Starting the bootstrap process..."
echo ""

scripts="homebrew-basic.sh
setDefaults.sh"

for script in ${scripts}
do
    echo ""
    source ${scripts}
    echo ""
done

echo "Bootstrap completed."
