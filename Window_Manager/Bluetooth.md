# Install 
    $ sudo pacman -S bluez bluez-utils
    $ lsmod | grep btusb
    $ modprobe btusb
    $ sudo systemctl start bluetooth.service
    $ sudo systemctl enable bluetooth.service
    
    // GUI App
        $ blueman

    // Terminal App
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

# If you have some problems
    $ rfkill
    $ rfkill list all
    $ sudo rfkill unblock bluetooth
    $ sudo systemctl restart bluetooth.service
