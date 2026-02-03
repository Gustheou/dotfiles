sudo apt update -y;
sudo apt upgrade -y;

sudo apt install git gh neovim neofetch zsh alacritty bat tldr; #yazi fastfetch?

sh -c "$(curl -fsSL https://install.ohmyz.sh/)";
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
#plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

flatpak install com.discordapp.Discord md.obsidian.Obsidian org.localsend.localsend_app page.codeberg.JakobDev.jdMinecraftLauncher org.nickvision.tubeconverter
