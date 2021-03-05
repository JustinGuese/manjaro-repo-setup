#!/bin/bash
# backup script
rsync -zr --ignore-existing --exclude 'miniconda3/*' /home/justin/* /mnt/glacier/Backup/manjaro/home
pacman -Qeq >> /mnt/glacier/Backup/manjaro/pkglist.txt
# reinstall sudo pacman -S --needed $(< pkglist.txt)
yay -Qeq >> /mnt/glacier/Backup/manjaro/yay-pkglist.txt
