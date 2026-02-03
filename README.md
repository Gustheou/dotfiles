# gustavo-dotfiles-setup-starter

This is my **personal dotfiles**.

I clone this repo **every time** I do a fresh linux install:

* Arch linux - i3, Hyprland
* Debian or a debian base distro
* Fedora with Sway

No setup drama. No boilerplate bloat (for me).
Just clone → execute the script → copy the themes and configs → done.

---

### ☁️ Why this repo exists

I got tired of:

* setting up my workflow everytime I do a fresh install
* looking for every program I need to install
* looking for every customization I need
* wasting energy before I even started building

So this repo is my default starting point.

If you see an image from my workflow,
**it probably started here.**

---

### ⚙️ Quick start

```bash
# Arch i3 example
git clone https://github.com/Gustheou/dotfiles.git
cd Arch/i3
chmod +x arch_i3.sh
./arch_i3.sh
cp -r .config/* ~/.config/
```

That’s it.

---

### ✨ Fonts, icons and themes:

Located in `dotfiles/share`

```bash
cp -r fonts icons themes ~/.local/share/
```

Used everytime I don't want default stuff

---
### 📄 How I use this repo

My usual flow:

1. Clone this repo
2. Execute the script
3. Move the config and custom stuff
4. Import my vs-code profile
5. Move on

---

### 🙂 Author

**Gustheou**
[https://github.com/Gustheou](https://github.com/Gustheou)
