# Depois de atualizar todo o sistema, o script instalará o que é necessário para você

sudo apt update -y;
sudo apt upgrade -y;

username="Gustheou"
email="gustavopn117@gmail.com"

sudo apt install git gh neovim neofetch zsh alacritty bat tldr; #yazi fastfetch?


git config --global user.name $username;
git config --global user.email $email;
git config --list;

sh -c "$(curl -fsSL https://install.ohmyz.sh/)";
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
#plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

flatpak install com.discordapp.Discord md.obsidian.Obsidian org.localsend.localsend_app page.codeberg.JakobDev.jdMinecraftLauncher
