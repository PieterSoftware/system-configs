#!/bin/zsh

# This scrip is intended for macOS 10.15 (Catalina) and higher

echo 'Enter a computer name:'
read computerName
echo "Hostname ${computerName}"

scutil --set ComputerName $computerName
if [ $? -ne 0 ]
then
    echo "Failure: Unable to set the computer name" >&2
    exit 1
fi

scutil --set HostName $computerName
if [ $? -ne 0 ]
then
    echo "Failure: Unable to set the host name" >&2
    exit 1
fi

scutil --set LocalHostName $computerName
if [ $? -ne 0 ]
then
    echo "Failure: Unable to set the local host name" >&2
    exit 1
fi

echo 'sucessfully configured computer name.'
