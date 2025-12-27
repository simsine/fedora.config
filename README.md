# ~ My Linux configs ~

![Screenshot of current desktop look](./media/desktop.png)

## - General -
- Distro: **Fedora Linux 43 (Workstation Edition) GNOME**
- [Background](./media/wallpaper_glassbeach.webp)

## - GNOME Extentions -
- Blur my Shell
- User Themes
- Hide Cursor
- Launch new instance
- Appindicator
- Removable drive menu
- System monitor

## - Themes -
- Normal font - Comfortaa
- NerdFont - Firacode Nerd Font - https://www.nerdfonts.com/font-downloads
- GTK theme - Colloid dgtk theme - https://github.com/vinceliuice/Colloid-gtk-theme
- Icon theme - Colloid icon theme - https://github.com/vinceliuice/Colloid-icon-theme

## - Apps -
### - Flatpak -
- ncspot - https://github.com/hrkfdn/ncspot - Spotify client
- PulseAudio Volume Controll - org.pulseaudio.pavucontrol - Volume controller
- Credential manager - org.gnome.seahorse.Application - Passwords and Keys
- Obsidian - md.obsidian.Obsidian
- Add water - dev.qwery.AddWater
- Prism Launcher
### - DNF -
- qbittorrent - Torrenting
- starship - Prompt
- fish - User shell
- VSCodium - IDE
- yt-dlp + yt-dlp-fish-completion - Media Downloader
- ffmpeg - Media encoder
- imagemagick
- fastfetch
- minicom - serial interface
- smartmontools - S.M.A.R.T utilities
- Mullvad vpn - VPN client
- wiretuard-tools - VPN
- tailscale - VPN
- gcc
- gcc-c++
- rustup
- postgresql
- onefetch
- ncdu
- lf
### - Cargo - 
- zoxide (z)
- fzf
- eza
- bat
- ripgrep (rg)
- bacon
- systemctl-tui

## Non-free packages

To enable non-free rpm-fusion packages:
```bash
sudo dnf install \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

To enable non-free ffmpeg:
```bash
sudo dnf swap ffmpeg-free ffmpeg --allowerasing
```
## 
```bash
sudo systemctl disable NetworkManager-wait-online.service
```

## Fisher

https://github.com/jorgebucaran/fisher

```sh
fisher install jorgebucaran/nvm.fish
```