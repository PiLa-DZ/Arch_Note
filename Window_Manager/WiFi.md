# Connect to WiFi by NetworkManager
    $ sudo pacman -S networkmanager
    $ sudo systemctl enable NetworkManager
    $ sudo systemctl start NetworkManager
    $ nmctl d
    $ nmctl r wifi on
    $ nmctl d wifi list
    $ nmctl d wifi connect SSID password WiFi-Password
