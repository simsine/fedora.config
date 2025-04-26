# ~ My Linux configs ~

![Screenshot of current desktop look](./media/desktop.png)

## - General -
- Distro: **Fedora Linux 42 (Workstation Edition) GNOME**
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
- Firefox theme - penguinFox - https://github.com/p3nguin-kun/penguinFox
- GTK theme - Colloid dgtk theme - https://github.com/vinceliuice/Colloid-gtk-theme
- Icon theme - Colloid icon theme - https://github.com/vinceliuice/Colloid-icon-theme
- gnome-terminal - One Dark - https://gogh-co.github.io/Gogh/

## - Apps -
### - Flatpak -
- Spotify client - ncspot - https://github.com/hrkfdn/ncspot
- Volume controller - PulseAudio Volume Controll - org.pulseaudio.pavucontrol
- Credential manager - Passwords and Keys - org.gnome.seahorse.Application
- Obsidian - md.obsidian.Obsidian
### - DNF -
- Screenshots - Flameshot
- Torrenting - qbittorrent
- Prompt - Starship
- User shell - fish
- IDE - VSCodium
- Media Downloader - yt-dlp + yt-dlp-fish-completion
- Media encoder - ffmpeg
- VPN client - Mullvad vpn
- Minecraft - Prism Launcher
- fastfetch 
- serial interface - minicom
- VPN - wiretuard-tools
- VPN - tailscale
- gcc
- rustup

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
