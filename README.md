# TEST BRANCH FOR BlindArch

## This test branch adds experimental support from the EZARCH scripting system by Eznik.
## This version is heavily customized to assit blind users in a quick and basic install.
For information on EZARCH, please visit the [main page on Sourceforge](https://sourceforge.net/projects/ezarch/)

BlindArch is a project based on [Talking Arch](http://talkingarch.info) to create an ArchLinux install CD for blind and visually impaired users. It also offers an easy to use installer to allow users to set up a completely accessible and customisable arch linux installation.
You can download the image from the [Blind Computing download page](https://onlinemarketspecialist.com/blindarch/BlindArch-2020.11.04-x86_64.iso).

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

sudo mkarchiso -v ~/blindarch 

It's as easy as that!

## Miscellaneous Notes

Most of the modifications made to the blindarch iso are confined to the airootfs subdirectory.
A couple of packages were also added to the package list to add support for virtual box.
Some other modifications include larger text for those with low vision and the default being set to the espeak by default.

## Thanks


All of the people who work on archiso have our heartfelt gratitude.
Thank you for making this process so easy.

Also, we appreciate the people who have used and tested BlindArch, especially
those who sent useful comments and suggestions.
