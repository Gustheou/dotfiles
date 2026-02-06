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

# Hyprland essential packages
sudo pacman -S wofi waybar pavucontrol brightnessctl hyprpaper hypridle hyprlock hyprpolkitagent hyprsunset cliphist wl-clipboard hyprland xdg-desktop-portal xdg-desktop-portal-hyprland kitty pcmanfm tumbler ly; #dolphin

# Fonts
sudo pacman -S ttf-jetbrains-mono-nerd ttf-dejavu noto-fonts noto-fonts-emoji ttf-liberation;

# Essentials packages (for me)
sudo pacman -S fastfetch flatpak firefox dunst man grim slurp ufw gst-libav gst-plugins-bad gst-plugins-good gst-plugins-ugly ffmpeg gstreamer qt5ct qt6ct archlinux-xdg-menu feh okular galculator blueman bluez bluez-utils ldns yazi github-cli libreoffice gnome-disk-utility mpv zip unzip p7zip unrar tar gzip keepassxc obsidian steam qbittorrent chromium ncdu discord gvfs htop;

#Alternatives
# sudo pacman -S polkit-kde-agent ristretto qutebrowser yt-dlp;

flatpak install flathub org.localsend.localsend_app page.codeberg.JakobDev.jdMinecraftLauncher org.nickvision.tubeconverter io.missioncenter.MissionCenter info.febvre.Komikku net.ankiweb.Anki com.usebottles.bottles;


# Enable bluetooth service
sudo systemctl enable bluetooth.service;
sudo systemctl start bluetooth.service;

#If you use intel, uncomment this line below:
sudo pacman -S intel-ucode;
#If you use AMD, uncomment this line below:
#sudo pacman -S amd-ucode;

# Enable firewall
sudo systemctl enable --now ufw.service;

# Enable greeting
sudo systemctl enable ly@tty1.service

# AUR Repository (YAY)
cd $HOME/;
git clone https://aur.archlinux.org/yay.git;
cd yay;
makepkg -si;
cd ..;

yay -S ttf-ms-fonts visual-studio-code-bin;

echo "Now reboot your system and after login, type 'Hyprland'";
