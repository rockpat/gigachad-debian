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
	    	     Gigachad Automated GNU+Linux Debian (Desktop) Setup Script
---------------------------------------------------------------------------------------------------
"

install_dotfiles() {
    local dotfiles_repo="https://github.com/rockpat/dotfiles"
    echo "Cloning dotfiles repository..."
    git clone "$dotfiles_repo" ~/Github/dotfiles
    echo "Installing dotfiles..."
    cd  ~/Github/dotfiles || exit
    ./setup.sh 
    echo "Dotfiles installed."
}

install_grub_btrfs() {
    echo "Installing dependencies for grub-btrfs..."
    sudo apt-get install build-essential git -y
    echo "Cloning grub-btrfs repository..."
    git clone https://github.com/Antynea/grub-btrfs.git ~/grub-btrfs
    echo "Compiling grub-btrfs..."
    cd ~/grub-btrfs || exit
    make
    echo "Installing grub-btrfs..."
    sudo make install
}

#kde_config() {
# sudo apt-get install pipx 
# pipx install konsave
# pipx runpip konsave install setuptools # https://www.reddit.com/r/linux4noobs/comments/1dms3rs/not_specifically_linux_but_could_someone_walk_me/
# apply my kde config with the help of konsave
#}


echo "Installing a minimal KDE-Plasma Desktop..."
sudo apt-get install kde-plasma-desktop neovim mpv timeshift grub-customizer

read -p "Do you want to install my dotfiles? (y/n): " install_dotfiles_choice
if [[ "$install_dotfiles_choice" == "y" ]]; then
    install_dotfiles
fi
install_grub_btrfs
#install_kde_config

###  To Do: ###

# 1. Make this Script Work, LMAO (Barebones) ✔
# 2. Make this Script Curlable.
# 3. Add Content
#  0.	[add option to install steam (dependencies)]
#  2.	add option to install flatpak (Automatically)
# 4. Add KDE Config to this script (konsave!)
# 5. Automatically Theme Grub (poly-dark)
# 6. Add the Gigachad Ascii after finishing
# 7. … (Coming soon)
