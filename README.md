## A truely GIGACHAD Setup-Script for Debian Testing

### Prerequisites:
- A minimal (server like) install of Debian Testing/Forky, on the BTRFS filessystem.
- Network access (ifup/NetworkManager)
- You're a KDE enjoyer ;-)

### What the fuck does it do?
- Automated set up Debian for "stable* & up to date" Desktop use. (That's why I recommend Testing)
- You have the option to install my dotfiles. (You can adjust the script to grab yours)
- Breakage protection, thanks to BTRFS, Timeshift & Grub-btrfs.
- Changing the Audio server from PulseAudio to Pipewire (Damn important for Wayland, thank me later)

## Installation

Just run these commands:

```sh
git clone https://github.com/rockpat/gigachad-debian ~/Github/gigachad-debian
cd ~/Github/gigachad-debian
./setup.sh
```

## What's the Purpose of it?
This is a VERY niche setup script that I mainly will use but if your taste is simulare to mine, then you will probably like it aswell.
Even though now LinUtil exist, *go check it out if you don't know it already,* this thing has the purpose of you setting up Debian (Testing) for the Desktop, just like all the Arch Post-Postinstall but better & for Debian.

**stable = Take a look at OpenSUSE Tumbleweed, this is the stable I mean. (Rolling but not bleeding)*
