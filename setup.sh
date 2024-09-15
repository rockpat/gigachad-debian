#!/bin/bash

echo "
---------------------------------------------------------------------------------------------------
     ██╗ █████╗ ██╗  ██╗██╗   ██╗██████╗     ██╗    ██╗██╗███████╗██╗      ██████╗  ██████╗██╗  ██╗
     ██║██╔══██╗██║ ██╔╝██║   ██║██╔══██╗    ██║    ██║██║██╔════╝██║     ██╔═══██╗██╔════╝██║  ██║
     ██║███████║█████╔╝ ██║   ██║██████╔╝    ██║ █╗ ██║██║█████╗  ██║     ██║   ██║██║     ███████║
██   ██║██╔══██║██╔═██╗ ██║   ██║██╔══██╗    ██║███╗██║██║██╔══╝  ██║     ██║   ██║██║     ██╔══██║
╚█████╔╝██║  ██║██║  ██╗╚██████╔╝██████╔╝    ╚███╔███╔╝██║███████╗███████╗╚██████╔╝╚██████╗██║  ██║
 ╚════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═════╝      ╚══╝╚══╝ ╚═╝╚══════╝╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝
---------------------------------------------------------------------------------------------------
	    		Gigachad Automated GNU+Linux Debian (Desktop) Setup
---------------------------------------------------------------------------------------------------
"

echo "Do you want to install a minimal KDE-Plasma, as a blank slate to build upon?: "
read $answer

#if $answer = yes|YES|ja; then exit
# sudo apt install kde-plasma-desktop mpv timeshift grub-customizer

# echo do you want to install my Dotfiles?

# build-dependancies
# sudo apt install ...

# grub-btrfs
# echo "don't forget to make a snapshot after rebooting"

###  To Do: ###

# 1. Make this Script Work, LMAO (Barebones)
# 2. Add a Option Menu/Dialog.
# 3. Add Content
#  0.	add option to install steam (dependencies)
#  1.	add option to install my dotfiles
#  2.	add option to install flatpak (Automatically)
# 4. … (Coming soon)
