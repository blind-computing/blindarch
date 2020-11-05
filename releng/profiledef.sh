#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="BlindArch"
iso_label="BlindARCH_$(date +%Y%m)"
iso_publisher="The Blind Computing team <https://blindcomputing.org/>"
iso_application="Accessible Arch Linux Live/Rescue CD"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
