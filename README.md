# Pieter Software dotfiles

The scripts and files in this repository configures systems as I use them and the settings applied by this repository will most likely not suit everyone. Please fork the repository and modify the settings accordingly.

## How to use

The project is split folders for the various operating systems to which these settings can be applied. Each folder contains a relevant readme with more details.

To bootstrap the system run the appropriate script:

* macOS

```shell
source bootstrap-macOS.sh
```

* FreeBSD

```shell
source bootstrap-FreeBSD.sh
```

### Why use `source` to run the scripts

Using `source` runs the script in the current shell instead of executing a new shell. This is handy when a script does not have a shebang.

You can still run the scripts using `./scriptname.sh` if you like.

## Thanks

The original idea came from:

* [Holman dotfiles](https://raw.githubusercontent.com/holman/dotfiles/)
* [Mathias dotfiles](https://github.com/mathiasbynens/dotfiles)
* [Unofficial guide to dotfiles](https://dotfiles.github.io/)
