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

install_dotfiles() {
    local dotfiles_repo="https://github.com/rockpat/dotfiles"
    echo "Cloning dotfiles repository..."
    git clone "$dotfiles_repo" ~/dotfiles
    echo "Installing dotfiles..."
    cd ~/dotfiles || exit
    ln -s 
    echo "Dotfiles installed."
}

install_grub_btrfs() {
    echo "Installing dependencies for grub-btrfs..."
    sudo apt install -y build-essential git
    echo "Cloning grub-btrfs repository..."
    git clone https://github.com/Antynea/grub-btrfs.git ~/grub-btrfs
    echo "Compiling grub-btrfs..."
    cd ~/grub-btrfs || exit
    make
    echo "Installing grub-btrfs..."
    sudo make install
}

echo "Installing a minimal KDE-Plasma Desktop..."
sudo apt-get install kde-plasma-desktop neovim mpv timeshift grub-customizer

read -p "Do you want to install my dotfiles? (y/n): " install_dotfiles_choice
if [[ "$install_dotfiles_choice" == "y" ]]; then
    install_dotfiles
fi
install_grub_btrfs


###  To Do: ###

# 1. Make this Script Work, LMAO (Barebones)
# 2. Add a Option Menu/Dialog.
# 3. Add Content
#  0.	add option to install steam (dependencies)
#  1.	add option to install my dotfiles
#  2.	add option to install flatpak (Automatically)
# 4. Automatically Theme Grub
# 5. Add the Gigachad Ascii after finishing
# 6. … (Coming soon)
