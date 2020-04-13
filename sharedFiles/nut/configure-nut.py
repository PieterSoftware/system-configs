import argparse
import sys

configFiles = [
    "nut.conf",
    "ups.conf",
    "upsd.conf",
    "upsd.users",
    "upsmon.conf",
    "upssched.conf",
]

scriptFiles = [
    "custom-upssched-cmd"
]

class initArgs(object):
    def __init__(self):
        self.parser = argparse.ArgumentParser()
        # Disable FreeBSD for now until compatibility was tested
        # self.parser.add_argument(
        #     "--FreeBSD",
        #     help="Use FreeBSD install paths.",
        #     action='store_true'
        # )
        self.parser.add_argument(
            "--Linux",
            help="Use Linux install paths",
            action='store_true'
        )
        self.parser.add_argument(
            "--devicePath",
            type=str,
            help="The device path of the ups",
            default="/dev/usb/hiddev0"
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

    osType = "Unknown"
    installPath = "Unknown"

    # Disable FreeBSD for now until compatibility was tested
    # if (appArguments.FreeBSD) and (appArguments.Linux):
    #     appArguments.print("FreeBSD and Linux are mutually exclusive parameters")

    # Disable FreeBSD for now until compatibility was tested
    # if (not appArguments.FreeBSD) and ( not appArguments.Linux):
    #     appArgumentParser.error("A host operating system must be selected")

    # Disable FreeBSD for now until compatibility was tested
    # if (appArguments.FreeBSD):
    #     osType="FreeBSD"
    #     installPath="/usr/local/etc/nut"

    # Disable FreeBSD for now until compatibility was tested, thus force Linux here
    # if (appArguments.Linux):
    if (1):
        osType="Linux"
        installPath="/etc/nut"

    print("Configuring NUT for use on {}.".format(osType))

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

if __name__ == "__main__":
    main()
