import argparse
import sys
import os

# TODO make the settings portable to other operating systems

configFiles = [
    "nut.conf",
    "ups.conf",
    "upsd.conf",
    "upsd.users",
    "upsmon.conf",
    "upssched.conf",
]

cgiConfigFiles = [
    "hosts.conf",
    "upsset.conf",
]

scriptFiles = [
    "custom-upssched-cmd"
]

class initArgs(object):
    def __init__(self):
        self.parser = argparse.ArgumentParser()
        self.parser.add_argument(
            "--devicePath",
            type=str,
            help="The device path of the ups",
            default="/dev/usb/hiddev0"
        )
        self.parser.add_argument(
            "--installPath",
            type=str,
            help="Install path for the configuration files",
            default="/etc/nut"
        )
        self.parser.add_argument(
            "--systemIP",
            type=str,
            help="Configure the ups daemon to monitor on this IP in addition to localhost",
            required=True,
        )
        self.parser.add_argument(
            "--upsmonPassword",
            type=str,
            help="Configure the password used for upsmon daemon",
            required=True,
        )
        self.parser.add_argument(
            "--upsWebMon",
            help="Install the configuration files for web monitoring of UPS",
            action='store_true'
        )
        self.parser.add_argument(
            "--adminPassword",
            type=str,
            help="Configure the password used for the admin user using the CGI Website",
            required=True,
        )
        self.args = self.parser.parse_args()

    def error(self, message):
        sys.stderr.write('error: %s\n' % message)
        self.parser.print_help()
        sys.exit(1)

    def get_args(self):
        return self.args

def main():
    appArgumentParser = initArgs()
    appArguments = appArgumentParser.get_args()

    installPath = appArguments.installPath

    print("Is nut installed?")

    print("Backup the original configuration files")
    for configFile in configFiles:
        if (not os.path.exists("{}/{}.orig".format(installPath, configFile))):
            os.system("cp {path}/{file} {path}/{file}.orig".format(
                path = installPath,
                file = configFile
            ))

    if (appArguments.upsWebMon):
        for configFile in cgiConfigFiles:
            if (not os.path.exists("{}/{}.orig".format(installPath, configFile))):
                os.system("cp {path}/{file} {path}/{file}.orig".format(
                    path = installPath,
                    file = configFile
                ))

    print("Preparing the configuration files:")
    for configFile in configFiles:
        print(configFile, "... ", end="")

        # Read in the file
        with open(configFile, 'r') as file :
            filedata = file.read()

        # Replace the target string
        filedata = filedata.replace('##DevicePath##', appArguments.devicePath)
        filedata = filedata.replace('##SystemIP##', appArguments.systemIP)
        filedata = filedata.replace('##LocalPass##', appArguments.upsmonPassword)
        filedata = filedata.replace('##AdminPass##', appArguments.adminPassword)

        # Write the file out again
        with open("{}.tmp".format(configFile), 'w') as file:
            file.write(filedata)

        print("Done")

    print("Save configuration files")
    for configFile in configFiles:
        os.system("mv {file}.tmp {path}/{file}".format(
            path = installPath,
            file = configFile
        ))
        os.system("chmod 640 {path}/{file}".format(
            path = installPath,
            file = configFile
        ))
        os.system("chown root:nut {path}/{file}".format(
            path = installPath,
            file = configFile
        ))

    if (appArguments.upsWebMon):
        for configFile in cgiConfigFiles:
            os.system("cp {file} {path}/{file}".format(
                path = installPath,
                file = configFile
            ))
            os.system("chmod 640 {path}/{file}".format(
                path = installPath,
                file = configFile
            ))
            os.system("chown root:nut {path}/{file}".format(
                path = installPath,
                file = configFile
            ))

        # Set the permissions for web UI
        os.system("chmod 644 {path}/{file}".format(
            path = installPath,
            file = "hosts.conf"
        ))
        os.system("chmod 644 {path}/*.html".format(
            path = installPath
        ))
        os.system("chown www-data:www-data /usr/lib/cgi-bin/nut/*.cgi")

        # Copy the nginx config
        os.system("cp {file} {path}/{file}".format(
            path = "/etc/nginx/sites-enabled",
            file = "nut_nginx.conf"
        ))

    scriptInstallPath = "/usr/local/bin"
    for scriptFile in scriptFiles:
        os.system("cp {file} {path}/{file}".format(
            path = scriptInstallPath,
            file = scriptFile
        ))
        os.system("chmod 755 {path}/{file}".format(
            path = scriptInstallPath,
            file = scriptFile
        ))
        os.system("chown root:root {path}/{file}".format(
            path = scriptInstallPath,
            file = scriptFile
        ))

if __name__ == "__main__":
    main()
