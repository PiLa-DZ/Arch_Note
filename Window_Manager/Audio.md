# Install Audio
    $ sudo pacman -S pulseaudio
    $ sudo pacman -S alsa-utils
    $ reboot
    $ alsamixer // Controle Sound

# Audio Controle Commends
## Sound Up
    $ pactl set-sink-volume @DEFAULT_SINK@ +10% 
    $ pactl set-sink-volume 0 +10% 
## Sound Down
    $ pactl set-sink-volume @DEFAULT_SINK@ -10% 
    $ pactl set-sink-volume 0 -10% 
## Mute And Unmute Sounds
    $ pactl set-sink-mute @DEFAULT_SINK@ toggle 
    $ pactl set-sink-mute 0 toggle 
## Mute And Unmute Mic
    $ pactl set-source-mute @DEFAULT_SOURCE@ toggle 
    $ pactl set-source-mute 1 toggle
