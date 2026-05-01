# Make sure you have homebrew and flathub setup. 
## 04-2026
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo;
```

## Brew cli packages
``` bash
brew install gh vis neovim ncdu trash-cli nnn borgbackup emacs;
```

## Flatpak GUI apps
```bash
flatpak install -y com.discordapp.Discord com.github.tchx84.Flatseal com.google.AndroidStudio com.valvesoftware.Steam com.vivaldi.Vivaldi io.mpv.Mpv md.obsidian.Obsidian net.ankiweb.Anki org.gnome.Loupe org.kde.okular org.keepassxc.KeePassXC org.libreoffice.LibreOffice org.libreoffice.LibreOffice.BundledExtension.Voikko org.localsend.localsend_app org.nickvision.tubeconverter page.codeberg.JakobDev.jdMinecraftLauncher com.parsecgaming.parsec org.shotcut.Shotcut dev.edfloreshz.Calculator org.geany.Geany;
```

## Firefox

Stylus extension:
```css
* {
    border-radius: 0px !important;
}
```
