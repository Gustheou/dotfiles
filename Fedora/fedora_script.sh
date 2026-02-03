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

flatpak install flathub com.valvesoftware.Steam org.qbittorrent.qBittorrent com.discordapp.Discord org.gnome.Calculator org.nickvision.tubeconverter md.obsidian.Obsidian com.obsproject.Studio net.ankiweb.Anki org.gnome.Loupe net.nokyan.Resources org.keepassxc.KeePassXC org.gnome.baobab page.codeberg.JakobDev.jdMinecraftLauncher org.localsend.localsend_app
