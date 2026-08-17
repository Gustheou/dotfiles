# BEFORE EXECUTING THIS SCRIPT, I HAVE A SUGGESTION
# (THIS STEP IS OPTIONAL!!!)
# GO TO PACMAN CONFIG FILE AND EDIT IT WITH YOUR PREFERED EDITOR, MINE IS NEOVIM: 
#   sudo nvim /etc/pacman.conf
# INSIDE THE TEXT, UNCOMMENT THE LINES: 
#   'ParallelDownloads = 10'
#   ENABLE 'Color'
# AND INSERT A LINE 'ILoveCandy' FOR PACMAN ANIMATION

# Update the system
sudo pacman -Syu;

sudo pacman -S ttf-dejavu;

# i3
sudo pacman -S i3 dmenu lightdm lightdm-gtk-greeter xdg-desktop-portal xdg-desktop-portal-gtk tumbler ffmpegthumbnailer flameshot brightnessctl kitty pcmanfm xarchiver xreader xed gvfs trash-cli smartmontools power-profiles-daemon pavucontrol dunst man-db feh borg xclip xdg-utils;

sudo pacman -S firefox flatpak ufw gst-libav gst-plugins-bad gst-plugins-good gst-plugins-ugly ffmpeg gstreamer galculator blueman bluez bluez-utils network-manager-applet networkmanager ldns github-cli libreoffice gnome-disk-utility mpv zip unzip unrar tar gzip keepassxc obsidian steam steam-devices ncdu discord geany;

flatpak install flathub org.localsend.localsend_app page.codeberg.JakobDev.jdMinecraftLauncher org.nickvision.tubeconverter net.ankiweb.Anki org.taisei_project.Taisei

#If you use intel, uncomment this line below:
sudo pacman -S intel-ucode;
#If you use AMD, uncomment this line below:
#sudo pacman -S amd-ucode;


# Enable login display manager
sudo systemctl enable lightdm;

# Enable bluetooth service
#sudo systemctl enable bluetooth.service;
#sudo systemctl start bluetooth.service;

# Enable firewall
sudo systemctl enable --now ufw.service;

echo "Now reboot your system!!!";
