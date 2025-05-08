# Install Chadwm
    $ sudo pacman -S base-devel
    $ sudo pacman -S xorg
    $ sudo pacman -S xorg-server
    $ sudo pacman -S xorg-xinit
    $ sudo pacman -S git
    $ sudo pacman -S imlib2
    $ sudo pacman -S dash
    $ sudo pacman -S picom
    $ sudo pacman -S feh
    $ sudo pacman -S acpi        
    $ sudo pacman -S rofi

    $ git clone https://github.com/siduck/chadwm --depth 1  ~/.config/chadwm
    $ cd ~/.config/chadwm/
    $ mv eww ~/.config
    $ cd chadwm
    $ sudo make install
    $ sudo chmod +x *
    $ vim ~/.bashrc
        alias chadwm='startx ~/.config/chadwm/scripts/run.sh'
    $ reboot
    $ chadwm

    // Auto Start
        $ vim ~/.bash_profile
            chadwm

    // Edit some config
        $ cd ~/.config/chadwm/chadwm
        $ sudo vim config.h
        $ sudo make install
        // Super+Shift+r  --> Refresh Chadwm Config

