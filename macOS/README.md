# macOS #

This folder contains the scripts and files specific to macOS.

Not all of these scripts are executed when the system is bootstrapped and function as a utility script that can be run when required.

## macOS support ##

- Catalina 10.15.7 ✅
- Big Sur 11.1 ⚠️ not tested

## SSH key setup ##

Generate ssh keys

- RSA key `ssh-keygen -b 2048`
- ECDSA key `ssh-keygen -t ed25519`

If using multiple keys and they should be tried in a set order define a ssh config file `~/.ssh/config`

For example, try the EC key before the RSA key.

```shell
IdentityFile ~/.ssh/id_ed25519
IdentityFile ~/.ssh/id_rsa
```

References:

- The man page: `man ssh_config`
- [How To Configure Custom Connection Options for your SSH Client](https://www.digitalocean.com/community/tutorials/how-to-configure-custom-connection-options-for-your-ssh-client)

## Python setup ##

After the bootstrap is completed configure pyenv with the version of python required. Replace `x.x.x` with the relevant version. To see all version available to pyenv run `pyenv install -l`

```shell
pyenv install x.x.x
pyenv global x.x.x
```

References:

- [The right and wrong way to set Python 3 as default on a Mac](https://opensource.com/article/19/5/python-3-default-mac)

## Notes on homebrew ##

To skip updating homebrew when running a command, add `HOMEBREW_NO_AUTO_UPDATE=1` to the command. For example, creating a new Brewfile

```shell
HOMEBREW_NO_AUTO_UPDATE=1 brew bundle dump
```

## Legacy Manual macOS setup (For reference) ##

Some of these manual steps will be added to the bootstrap scripts at some stage

### macOS - Settings ###
* System:
     * Enable automatic software updates for apps and macOS
     * Enable Apple Watch login
     * Enable file vault
     * Enable firewall
     * Configure for dark mode and green tint
     * Disable automatic spaces arrangement on usage
     * Install my VPN profile
     * Remove guest account
     * Disable shake mouse pointer to locate
* Finder:
     * Show path bar
     * Show status bar
     * Show tab bar
     * Update Favourites visible
     * Auto delete trash after 30 days
     * When performing a search search this folder
     * New finder window opens home folder
* Messages:
     * Enable SMS
     * Enable iCloud sync
* Dock:
     * Minimise apps into app icon
* Mail:
     * General - Auto add calendar
     * General - Auto resend if server unavailable
     * Junk - Enable filtering
     * Viewing - Show most recent at the top
     * Set the signatures
* Safari:
     * Show favourites bar

### Force mail.app to show attachments as icons ###

Set the setting:

```shell
defaults write com.apple.mail DisableInlineAttachmentViewing -bool YES
```

Check with:

```shell
defaults read com.apple.mail DisableInlineAttachmentViewing
```

### Afrikaans spelling ###
* [LibreOffice Dictionaries](https://github.com/LibreOffice/dictionaries)
* Add the .dic and .aff Afrikaans dictionary files to `~/Library/Spelling`
* Configure the text settings under: Settings->Keyboard->Text->Spelling
* When Afrikaans spelling is needed use: `cmd + shift + :` to set the input language for the application


### Apps installed from downloads ###
* [Firefox](https://www.mozilla.org/en-US/firefox/new/)
* [iStat Menus](https://bjango.com/mac/istatmenus/)
* [Intel Power Gadget](https://software.intel.com/en-us/articles/intel-power-gadget), used by iStat for frequency monitoring
* [Winbox for macOS](http://joshaven.com/resources/tools/winbox-for-mac/)
* [Logitech Options](https://www.logitech.com/en-za/product/options)
* [iTerm2](https://www.iterm2.com)
    * General - Selection: Applications may access clipboard - enable
    * Appearance - General: Set theme to compact
    * Appearance - Tabs: Show tab bar even with one tab - enable
    * Profiles - Default - General - Title: Show profile name - enable
    * Profiles - Default - Colors: Set to TangoDark-PS
    * Profiles - Default - Session - Enable Status Bar
        * Current Directory
        * Job Name
        * CPU
        * RAM
        * Network
    * Profiles - Default - Windows: Set to 160 x 40
    * New profiles can now be cloned from default
    * Create a dedicated hotkey window

### Apps installed from App Store ###
* Pages, Numbers and Keynote
* MS Word, Excel, PowerPoint
* OneDrive
* 1Password
* Magnet
* Amphetamine
* Pixelmator
* DaisyDisk
* Xcode
    * Text Editing:
        * Display: Enable code folding ribbon
* Apple Configurator 2
* Icon Set Creator


### Development apps and downloads ###
* ZSH Setup
* [VSCode](https://code.visualstudio.com)
* [SourceTree](https://www.atlassian.com/software/sourcetree)
* draw.io

### ZSH Setup ###

Install (Oh My ZSH)[https://ohmyz.sh]:

```shell
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Use default settings and `.zshrc` file for now but enable the following plugins:

```shell
plugins=(
  git
  osx
  xcode
  sublime
  vscode
  zsh_reload
  pyenv
)
```
