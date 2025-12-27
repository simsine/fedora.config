# ~ My Linux configs ~

![Screenshot of current desktop look](./media/desktop.png)

## - General -
- Distro: **Fedora Linux Workstation Edition (GNOME)**
- [Background image](./media/wallpaper_glassbeach.webp)

## - GNOME Extentions -
- Battery health charging
- Blur my Shell
- Hide Cursor
- Logo menu
- Removable drive menu
- System monitor
- Tailscale QS
- Appindicator and KStatusNotifierItem Support
- Background logo
- Launch new instance

## - Themes -
- Interface font - Comfortaa
- Document font - Adwaita Sans
- NerdFont - Firacode Nerd Font - https://www.nerdfonts.com/font-downloads
- Icon theme - Colloid red light - https://github.com/vinceliuice/Colloid-icon-theme
- Cursor - WhiteSur cursors - https://github.com/vinceliuice/WhiteSur-cursors
- Firefox theme - Firefox GNOME Theme - https://github.com/largestgithubuseronearth/addwater

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