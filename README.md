# TEST BRANCH FOR BlindArch

# WARNING
# This version is under development.  
# DO NOT USE THIS unless you are working with us on testing. USE OF THIS VERSION MAY RESULT IN DATA LOSS

## This test branch adds an experimental install script based on the EZARCH scripting system by Eznix.
## This version is heavily customized to assist blind users for a quick and basic install.
For information on EZARCH, please visit the [main page on Sourceforge](https://sourceforge.net/projects/ezarch/)

BlindArch is a project based on [Talking Arch](http://talkingarch.info) to create an ArchLinux install CD for blind and visually impaired users. It also offers an easy to use installer to allow users to set up a completely accessible and customisable arch linux installation.

NOTE:  The partitioner built into the script WILL WIPE THE DRIVE YOU SELECT.  You have been warned.

You may choose to forego the parititioning and run the installer scripts manually.  Simply partition as you would normally in Arch, mount your drives, then run the ezarch.bios or ezarch.uefi script to install either with legacy or eufi support respectively.

You can download the latest testing image from the [Blind Computing download page](https://onlinemarketspecialist.com/blindarch/BlindArch-2020.11.22-x86_64.iso).

NOTE: The listed address is a temporary placeholder until the ISO can be sent up to the BC server.

If you just want a CD image, you can stop reading here!
The rest of this document is only useful for those who want to build their own images.

## Getting Started

BlindArch is built using the [archiso scripts](https://wiki.archlinux.org/index.php/Archiso).

You will find archiso [here](https://www.archlinux.org/packages/extra/any/archiso/).
You should update this package regularly, to keep abreast of upstream changes.
I encourage you to read archiso's Wiki before proceeding.  You can find that document [here](https://wiki.archlinux.org/index.php/Archiso).


To begin, execute the following to clone the repo and enter the directory:

git clone https://github.com/blind-computing/blindarch.git ~/blindarch && cd ~/blindarch

When building the iso, the mkarchiso script needs to be run as root (generally using sudo).
Two folders will be created in the directory, one is work, and the other out.
This can be changed (please read the wiki for details).
It is important not to stop the build or folders can be mounted and locked (please read the wiki for details).

The command to build will be:

sudo mkarchiso -v ~/blindarch/releng/

It's as easy as that!

## Miscellaneous Notes

Most of the modifications made to the blindarch iso are confined to the airootfs subdirectory.
A couple of packages were also added to the package list to add support for virtual box.
Some other modifications include larger text for those with low vision and the default being set to the espeak by default.

### DEs installed:

We currently have i3, GNOME, MATE, Cinnamon and XFCE installs enabled.
We are running Lightdm for all installs with autologin enabled.
This is due to a bug where Lightdm is not launching the screen reader at this time.

### Cinnamon Warning:

Cinnamon currently has a bug which prevents enabling the screenreader out of the box, you will need to enable it manually.

This can be accomplished with the following command pasted into a terminal:

dconf gsettings set org.gnome.desktop.a11y.applications screen-reader-enabled true

Alternatively, this can be enabled through the menu under accessiblity.


## Thanks


All of the people who work on archiso have our heartfelt gratitude.
Thank you for making this process so easy.
Special thanks to Eznix for all his hard work building the EZarcher script.

Also, we appreciate the people who have used and tested BlindArch, especially
those who sent useful comments and suggestions.
