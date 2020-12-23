# macOS

This folder contains the scripts and files specific to macOS.

Not all of these scripts are executed when the system is bootstrapped and function as a utility script that can be run when required.

Scripts can be run manually by running

```shell
source script.sh
```

## macOS support

- Catalina 10.15.7 ✅
- Big Sur 11.1 ⚠️ not tested

## Notes on homebrew

To skip updating homebrew when running a command, add `HOMEBREW_NO_AUTO_UPDATE=1` to the command. For example, creating a new Brewfile

```shell
HOMEBREW_NO_AUTO_UPDATE=1 brew bundle dump
```

## Script descriptions

### bootstrap-macOS.sh

Main script for bootstrapping a new system

### setDefaults.sh (Executed by bootstrap-macOS.sh)

This script sets macOS defaults by using the `defaults` command

### setHostname.sh

Script to ease the processing of settings the host name of the device.

### bootstrap-homebrew.sh (Executed by bootstrap-macOS.sh)

This script checks if homebrew is installed before installing the taps, formulae and casks listed in the Brewfile

### install-latex.sh

Install latex support using homebrew casks

- [basictex](https://formulae.brew.sh/cask/basictex)
- [tex-live-utility](https://formulae.brew.sh/cask/tex-live-utility)

#### install-virtualbox.sh

Install virtualbox using homebrew casks

- [virtualbox-extension-pack](https://formulae.brew.sh/cask/virtualbox-extension-pack)
- [virtualbox](https://formulae.brew.sh/cask/virtualbox)

