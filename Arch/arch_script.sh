sudo pacman -Syu;
sudo pacman -S dolphin kitty zsh;
sudo pacman -S wofi waybar pavucontrol brightnessctl;
sudo pacman -S fastfetch flatpak github-cli ttf-jetbrains-mono-nerd;

sudo pacman -S hyprpaper hypridle hyprlock cliphist wl-clipboard dunst man tldr bat polkit-kde-agent grim slurp ufw tlp ttf-dejavu noto-fonts noto-fonts-emoji ttf-liberation gst-libav gst-plugins-bad gst-plugins-good gst-plugins-ugly ffmpeg gstreamer hyprland xdg-desktop-portal xdg-desktop-portal-hyprland kvantum kvantum-qt5 qt5ct qt6ct nwg-look kwrite archlinux-xdg-menu keepassxc ristretto obsidian libreoffice gnome-disk-utility okular steam qbittorrent chromium galculator;

sudo systemctl enable --now ufw.service;

flatpak install flathub com.github.d4nj1.tlpui com.discordapp.Discord md.obsidian.Obsidian org.localsend.localsend_app page.codeberg.JakobDev.jdMinecraftLauncher org.nickvision.tubeconverter flathub net.nokyan.Resources;

git clone https://aur.archlinux.org/yay.git;
cd yay;
makepkg -si;
cd ..;
yay -S ttf-ms-fonts visual-studio-code-bin;

curl -f https://zed.dev/install.sh | sh;
sh -c "$(curl -fsSL https://install.ohmyz.sh/)";


git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
#plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

username="Gustheou"
email="gustavopn117@gmail.com"

git config --global user.name $username;
git config --global user.email $email;
git config --list;
