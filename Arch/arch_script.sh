# BEFORE EXECUTING THIS SCRIPT, I HAVE A SUGGESTION
# (THIS STEP IS OPTIONAL!!!)
# GO TO PACMAN CONFIG FILE AND EDIT IT WITH YOUR PREFERED EDITOR, MINE IS NEOVIM: 
#   sudo nvim /etc/pacman.conf
# INSIDE THE TEXT, ENABLE 'ParallelDownloads = 10'
# ENABLE 'Color'
# INSERT A LINE 'ILoveCandy'

# Update the system
sudo pacman -Syu;

# Hyprland essential packages
sudo pacman -S wofi waybar pavucontrol brightnessctl hyprpaper hypridle hyprlock cliphist wl-clipboard hyprland xdg-desktop-portal xdg-desktop-portal-hyprland kitty thunar thunar-volman; #dolphin

# Fonts
sudo pacman -S ttf-jetbrains-mono-nerd ttf-dejavu noto-fonts noto-fonts-emoji ttf-liberation;

# Essentials packages (for me)
sudo pacman -S fastfetch flatpak firefox dunst man polkit-kde-agent grim slurp ufw tlp gst-libav gst-plugins-bad gst-plugins-good gst-plugins-ugly ffmpeg gstreamer kvantum kvantum-qt5 qt5ct qt6ct nwg-look archlinux-xdg-menu feh okular galculator blueman bluez bluez-utils ldns yazi bat github-cli libreoffice gnome-disk-utility mpv zip unzip p7zip unrar tar gzip keepassxc obsidian steam qbittorrent chromium ncdu discord;

flatpak install flathub com.github.d4nj1.tlpui org.localsend.localsend_app page.codeberg.JakobDev.jdMinecraftLauncher org.nickvision.tubeconverter net.nokyan.Resources info.febvre.Komikku;


# Enable bluetooth service
sudo systemctl enable bluetooth.service;
sudo systemctl start bluetooth.service;

#If you use intel, uncomment this line below:
sudo pacman -S intel-ucode;
#If you use AMD, uncomment this line below:
#sudo pacman -S amd-ucode;

# Enable firewall
sudo systemctl enable --now ufw.service;

# AUR Repository (YAY)
cd $HOME/;
git clone https://aur.archlinux.org/yay.git;
cd yay;
makepkg -si;
cd ..;

yay -S ttf-ms-fonts visual-studio-code-bin newsflash;

## ZSH-Section
#sudo pacman -S zsh
# OhMyZShell installer
#sh -c "$(curl -fsSL https://install.ohmyz.sh/)";
  # Plugins for ZShell
#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
# MODIFY into .zshrc file
#plugins=(git zsh-autosuggestions zsh-syntax-highlighting)


## GITHUB-Section
# INSERT your username and email and uncomment below lines.
#username=""
#email=""

#git config --global user.name $username;
#git config --global user.email $email;
#git config --list;

echo "Now reboot your system and after login, type 'Hyprland'";
