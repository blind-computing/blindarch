# BlindArch

BlindArch is a project based on [Talking Arch](http://talkingarch.info) to create an ArchLinux install CD for blind and visually impaired users. It also offers an easy to use installer to allow users to set up a completely accessible and customisable arch linux installation.
You can download the image from the [Blind Computing download page](https://blindcomputing.org/downloads/blindarch).
If you just want a CD image, you can stop reading here!
The rest of this document is only useful for those who want to build their own images.

## Getting Started

BlindArch is built using the [archiso scripts](https://wiki.archlinux.org/index.php/Archiso).

You will find archiso [here](https://www.archlinux.org/packages/extra/any/archiso/).
You should update this package regularly, to keep abreast of upstream changes.
I encourage you to read archiso's README before proceeding.  You can find that document at
**/usr/share/doc/archiso/README.**


so execute the following to clone this repo their:

git clone https://github.com/blind-computing/blindarch.git ~/blindarch && cd ~/blindarch

Building the iso through the mkarchiso script needs to be run as sudo.
Two folders will be created in the directory, one is work, and the other out.
This can be changed (please read the wiki for details).
It is important not to stop the build or folders can be mounted and locked (please read the wiki for details).

The command to build will be:

mkarchiso -v ~/blindarch 

It's as easy as that!

## Miscellaneous Notes

Most of the modifications made to the blindarch iso are confined to the airootfs subdirectory.
A couple of packages were also added to the package list to add support for vmware.
Some other modifications include larger text for those with low vision and the default being set to the espeak by default.

## Thanks


All of the people who work on archiso have our heartfelt gratitude.
Thank you for making this process so easy.

Also, we appreciate the people who have used and tested BlindArch, especially
those who sent useful comments and suggestions.
