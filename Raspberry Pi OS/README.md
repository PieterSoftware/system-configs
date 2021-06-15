# sharedFiles

This folder contains the scripts and files specifically targeted for use on a raspberry pi using Raspbian.

## Descriptions

### nut

This folder contains the configuration files and scripts for [NUT](https://networkupstools.org/)

See the website for more information on the various settings that can be configured.

To install nut and the packages required for configuring ups monitoring run

```shell
sudo apt install nginx nut nut-cgi fcgiwrap
```

Note the settings used assumes the UPS and web monitor services are run on a closed network behind a firewall. See the NUT documentation for best practices regarding security if this is not the case.

The configuration files have place holders for the passphrase, system IP, and path the UPS device. These place holder must be replace for the files to be usable.

To prepare the configuration files for use run:

```shell
sudo python3 configure-nut.py --upsmonPassword "SET_PASSWORD" --adminPassword "SET_PASSWORD" --systemIP "SET_IP" --upsWebMon
```

The script will use the command line arguments provided to configure the NUT configuration files before installing them.

**Reference:** [Raspberry Pi UPS monitor (with Nginx web monitoring)](https://loganmarchione.com/2017/02/raspberry-pi-ups-monitor-with-nginx-web-monitoring/)
