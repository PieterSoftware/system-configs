# sharedFiles

This folder contains the scripts and files shared by the operating systems.

## Descriptions

### nut

This folder contains the configuration files and scripts for [NUT](https://networkupstools.org/)

See the website for more information on the various settings that can be configured.

The configuration files have place holders for the passphrase, system IP, and path the UPS device. These place holder must be replace for the files to be usable.

To prepare the configuration files for use run:

```shell
python configure-nut.py
```

The script will use the command line arguments provided to configure the NUT configuration files before installing them.
