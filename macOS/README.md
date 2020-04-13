# macOS

This folder contains the scripts and files specific to macOS.

Not all of these scripts are executed when the system is bootstrapped and function as a utility script that can be run when required.

Scripts can be run manually by running

```shell
source script.sh
```

## Script descriptions

### setDefaults.sh (Executed by bootstrap-macOS.sh)

This script sets macOS defaults by using the `defaults` command

### setHostname.sh

Script to ease the processing of settings the host name of the device.

### homebrew-basic.sh (Executed by bootstrap-macOS.sh)

#### Formulae

* [awscli](https://formulae.brew.sh/formula/awscli)
* [dos2unix](https://formulae.brew.sh/formula/dos2unix)
* [pyenv](https://formulae.brew.sh/formula/pyenv)
* [python](https://formulae.brew.sh/formula/python)
* [sshfs](https://formulae.brew.sh/formula/sshfs)

#### Casks

* [1password](https://formulae.brew.sh/cask/1password)
* [caffeine](https://formulae.brew.sh/cask/caffeine)
* [daisydisk](https://formulae.brew.sh/cask/daisydisk)
* [divvy](https://formulae.brew.sh/cask/divvy)
* [dropbox](https://formulae.brew.sh/cask/dropbox)
* [firefox](https://formulae.brew.sh/cask/firefox)
* [intel-power-gadget](https://formulae.brew.sh/cask/intel-power-gadget)
* [istat-menus](https://formulae.brew.sh/cask/istat-menus)
* [iterm2](https://formulae.brew.sh/cask/iterm2)
* [joshaven-winbox](https://formulae.brew.sh/cask/joshaven-winbox)
* [kaleidoscope](https://formulae.brew.sh/cask/kaleidoscope)
* [onedrive](https://formulae.brew.sh/cask/onedrive)
* [osxfuse](https://formulae.brew.sh/cask/osxfuse)
* [postman](https://formulae.brew.sh/cask/postman)
* [serial](https://formulae.brew.sh/cask/serial)
* [sourcetree](https://formulae.brew.sh/cask/sourcetree)
* [tunnelblick](https://formulae.brew.sh/cask/tunnelblick)
* [visual-studio-code](https://formulae.brew.sh/cask/visual-studio-code)
* [vlc](https://formulae.brew.sh/cask/vlc)

### homebrew-latex.sh

* [basictex](https://formulae.brew.sh/cask/basictex)
* [tex-live-utility](https://formulae.brew.sh/cask/tex-live-utility)

#### homebrew-virtualbox.sh

* [virtualbox-extension-pack](https://formulae.brew.sh/cask/virtualbox-extension-pack)
* [virtualbox](https://formulae.brew.sh/cask/virtualbox)

#### Casks to remember

Listed below are casks I am not actively using but thought they might be handy at some stage.

* [adapter](https://formulae.brew.sh/cask/adapter)
* [aws-vault](https://formulae.brew.sh/cask/aws-vault)
* [brave-browser](https://formulae.brew.sh/cask/brave-browser)
* [chromium](https://formulae.brew.sh/cask/chromium)
* [clockify](https://formulae.brew.sh/cask/clockify)
* [docker](https://formulae.brew.sh/cask/docker)
* [doxygen](https://formulae.brew.sh/cask/doxygen)
* [drawio](https://formulae.brew.sh/cask/drawio)
* [fork](https://formulae.brew.sh/cask/fork)
* [gitkraken](https://formulae.brew.sh/cask/gitkraken)
* [google-chrome](https://formulae.brew.sh/cask/google-chrome)
* [gpg-suite](https://formulae.brew.sh/cask/gpg-suite)
* [macdown](https://formulae.brew.sh/cask/macdown)
* [private-internet-access](https://formulae.brew.sh/cask/private-internet-access)
* [protonmail-bridge](https://formulae.brew.sh/cask/protonmail-bridge)
* [protonvpn](https://formulae.brew.sh/cask/protonvpn)
* [sublime-merge](https://formulae.brew.sh/cask/sublime-merge)
* [sublime-text](https://formulae.brew.sh/cask/sublime-text)
* [teamviewer](https://formulae.brew.sh/cask/teamviewer)
* [telegram](https://formulae.brew.sh/cask/telegram)
* [tuxera-ntfs](https://formulae.brew.sh/cask/tuxera-ntfs)
* [veracrypt](https://formulae.brew.sh/cask/veracrypt)
* [wireshark](https://formulae.brew.sh/cask/wireshark)
* [xca](https://formulae.brew.sh/cask/xca)
