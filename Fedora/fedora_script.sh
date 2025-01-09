sudo dnf upgrade;
sudo dnf install fastfetch zsh neovim bat alacritty xed;
sudo dnf install git;
sudo dnf install gh;

sudo dnf install curl cabextract xorg-x11-font-utils fontconfig;
sudo rpm -i https://downloads.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm;

sh -c "$(curl -fsSL https://install.ohmyz.sh/)";

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
#plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

username="Gustheou"
email="gustavopn117@gmail.com"

git config --global user.name $username;
git config --global user.email $email;
git config --list;

flatpak install flathub com.valvesoftware.Steam flathub org.qbittorrent.qBittorrent flathub com.discordapp.Discord flathub org.gnome.Calculator flathub org.nickvision.tubeconverter flathub md.obsidian.Obsidian flathub com.obsproject.Studio flathub net.ankiweb.Anki flathub org.gnome.Loupe flathub net.nokyan.Resources flathub org.keepassxc.KeePassXC flathub org.gnome.baobab flathub page.codeberg.JakobDev.jdMinecraftLauncher
