# Inatall i3
    $ sudo pacman -S xorg
    $ sudo pacman -S xorg-server
    $ sudo pacman -S xorg-xinit
    $ sudo pacman -S i3

    $ vim ~/.xinitrc
        exec i3
    $ reboot
    // Login
    $ startx

    // Edit some config
        $ vim ~/.config/i3/config
        // Ctrl+Shift+r  --> Refresh i3 Config

    // Auto Start
        $ vim ~/.bash_profile
            startx

    // Edit i3 config
    font pango:DejaVu Sans Mono 0
    for_window [class="^.*"] border pixel 1

    // Logout
    $ i3-msg exit

