# Install 
    $ sudo pacman -S bluez bluez-utils
    $ lsmod btusb
    $ sudo systemctl start bluetooth.service
    $ sudo systemctl enable bluetooth.service
    
    // Graphic interface
        $ blueman

    $ bluetoothctl
        > power on
        > agent on
        > default-agent
        > scan on
        > devices
        > trust Device_ID
        > pair Device_ID
        > connect Device_ID
        > scan off

# Auto Enable 
    $ sudo nvim /etc/bluetooth/main.conf
        // Uncomment # AutoEnable=true

# Audio bluetooth
    $ sudo pacman -S pulseaudio-bluetooth
    $ pulseaudio --start
    $ pavucontrol
