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

# i3
sudo pacman -S i3 dmenu lightdm lightdm-gtk-greeter xdg-desktop-portal xdg-desktop-portal-gtk tumbler ffmpegthumbnailer flameshot brightnessctl kitty pcmanfm xarchiver;
#thunar thunar-archive-plugin thunar-volman fileroller
sudo pacman -S xed firefox flatpak dunst man ufw gst-libav gst-plugins-bad gst-plugins-good gst-plugins-ugly ffmpeg gstreamer archlinux-xdg-menu feh okular galculator blueman bluez bluez-utils network-manager-applet ldns yazi github-cli libreoffice gnome-disk-utility mpv zip unzip p7zip unrar tar gzip keepassxc obsidian steam qbittorrent chromium ncdu discord;

flatpak install flathub org.localsend.localsend_app page.codeberg.JakobDev.jdMinecraftLauncher org.nickvision.tubeconverter info.febvre.Komikku net.ankiweb.Anki

#If you use intel, uncomment this line below:
sudo pacman -S intel-ucode;
#If you use AMD, uncomment this line below:
#sudo pacman -S amd-ucode;

# AUR Repository (YAY)
cd $HOME/;
git clone https://aur.archlinux.org/yay.git;
cd yay;
makepkg -si;
cd ..;

yay -S st ttf-ms-fonts visual-studio-code-bin android-studio min-browser-bin;

## ZSH-Section
#sudo pacman -S zsh
# OhMyZShell installer
#sh -c "$(curl -fsSL https://install.ohmyz.sh/)";
  # Plugins for ZShell
#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
# MODIFY into .zshrc file
#plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Enable login display manager
sudo systemctl enable lightdm;

# Enable bluetooth service
sudo systemctl enable bluetooth.service;
#sudo systemctl start bluetooth.service;

# Enable firewall
sudo systemctl enable --now ufw.service;

echo "Now reboot your system!!!";
