# Pieter Software dotfiles

Your dotfiles are how you personalize your system. The settings applied by this repository will most likely not suit everyone. Please fork the repository and modify the settings accordingly.

## How to use?

The project is split into topics represented by folders. Each folder contains a relevant readme to guide in the usage of the files.

To apply the whole repository and all the settings relevant run the bootstrap script for your OS from the repo directory:

* macOS

```
source bootstrap-macOS.sh
```

* FreeBSD

```
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
