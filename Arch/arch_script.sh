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
sudo pacman -S wofi waybar pavucontrol brightnessctl ttf-jetbrains-mono-nerd hyprpaper hypridle hyprlock cliphist wl-clipboard hyprland xdg-desktop-portal xdg-desktop-portal-hyprland dolphin kitty;

# System essential packages
sudo pacman -S fastfetch flatpak firefox dunst man polkit-kde-agent grim slurp ufw tlp ttf-dejavu noto-fonts noto-fonts-emoji ttf-liberation gst-libav gst-plugins-bad gst-plugins-good gst-plugins-ugly ffmpeg gstreamer kvantum kvantum-qt5 qt5ct qt6ct nwg-look kwrite archlinux-xdg-menu ristretto libreoffice gnome-disk-utility okular galculator blueman bluez bluez-utils;

# Enable bluetooth service
sudo systemctl enable bluetooth.service;
sudo systemctl start bluetooth.service;

#If you use intel, uncomment this line below:
#sudo pacman -S intel-ucode;
#If you use AMD, uncomment this line below:
#sudo pacman -S amd-ucode;

# Enable firewall
sudo systemctl enable --now ufw.service;

# Preference packages
sudo pacman -S keepassxc obsidian steam qbittorrent chromium yazi zsh bat tldr github-cli;

flatpak install flathub com.github.d4nj1.tlpui com.discordapp.Discord md.obsidian.Obsidian org.localsend.localsend_app page.codeberg.JakobDev.jdMinecraftLauncher org.nickvision.tubeconverter flathub net.nokyan.Resources;

# AUR Repository (YAY)
cd $HOME/;
git clone https://aur.archlinux.org/yay.git;
cd yay;
makepkg -si;
cd ..;
yay -S ttf-ms-fonts visual-studio-code-bin;

# Zed installer
curl -f https://zed.dev/install.sh | sh;

# OhMyZShell installer
sh -c "$(curl -fsSL https://install.ohmyz.sh/)";
  # Plugins for ZShell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
#plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

username="Gustheou"
email="gustavopn117@gmail.com"

git config --global user.name $username;
git config --global user.email $email;
git config --list;

echo "Now reboot your system and after login, type 'Hyprland'";
