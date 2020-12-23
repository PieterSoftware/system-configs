# macOS

This folder contains the scripts and files specific to macOS.

Not all of these scripts are executed when the system is bootstrapped and function as a utility script that can be run when required.

## macOS support

- Catalina 10.15.7 ✅
- Big Sur 11.1 ⚠️ not tested

## SSH key setup

Generate ssh keys

- RSA key `ssh-keygen -b 2048`
- ECDSA key `ssh-keygen -t ed25519`

If using multiple keys and they should be tried in a set order define a ssh config file `~/.ssh/config`

For example, try the EC key before the RSA key.

```shell
IdentityFile ~/.ssh/id_ed25519
IdentityFile ~/.ssh/id_rsa
```

For more information:

- The man page for `man ssh_config`
- [How To Configure Custom Connection Options for your SSH Client](https://www.digitalocean.com/community/tutorials/how-to-configure-custom-connection-options-for-your-ssh-client)

## Python setup

After the bootstrap is completed configure pyenv with the version of python required. Replace `x.x.x` with the relevant version. To see all version available to pyenv run `pyenv install -l`

```shell
pyenv install x.x.x
pyenv global x.x.x
```

For more information:

- [The right and wrong way to set Python 3 as default on a Mac](https://opensource.com/article/19/5/python-3-default-mac)

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
