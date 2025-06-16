# Power Button Suspend
```Bash
sudo nvim /etc/systemd/logind.conf
    HandlePowerKey=suspend
```

# Connect to ftp
```Bash
sudo pacman -S filezilla
filezilla
```
# CPU Power
```Bash
sudo pacman -S cpupower
sudo cpupower --cpu all frequency-set  --max 800MHz
sudo cpupower --cpu all frequency-set --governor powersave
    // (powersave || performance || ondemand || conservative || userspace)
sudo nvim /etc/default/cpupower
    governor='performance'
    min_freq="500MHz"
    max_freq="1200MHz"
```
# ASCII Art
```Bash
figlet -f Bloody "Nabil" | xclip -selection c
figlet  Welcome Nabil -f ANSI_Shadow -t -c | lolcat
figlet  Welcome Nabil -f Bloody -c | lolcat
figlet  Welcome Nabil -f Blocks -c | lolcat
figlet  Welcome Nabil -f 3d -c | lolcat
figlet  " Bash" -f 3d | lolcat
```
- Figlet Fonts
    - https://github.com/xero/figlet-fonts

# MPV Run Youtube video from terminal
```Bash
sudo pacman -S mpv
sudo pacman -S yt-dlp
# Run mpv with video
mpv https://youtu.be/C55zjPlqdYw?si=66MASzSqkTX-_AXF -v
# Run mpv with audio
mpv https://youtu.be/C55zjPlqdYw?si=66MASzSqkTX-_AXF --no-video

```
```
```
