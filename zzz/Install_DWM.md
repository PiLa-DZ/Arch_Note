# Install dwm
    $ sudo pacman -S base-devel
    $ sudo pacman -S xorg
    $ sudo pacman -S xorg-server
    $ sudo pacman -S xorg-xinit
    $ sudo pacman -S git

    $ sudo pacman -S libx11 libxinerama libxft webkit2gtk

    $ cd ~/
    $ git clone https://git.suckless.org/dwm
    $ cd dwm
    $ sudo make clean install

    $ vim ~/.xinitrc
        exex wdm
    $ raboot
    $ startx

    // Edit some config
        $ sudo vim config.h
        $ sudo make clean install
        // Alt+Shift+q  --> Logout dwm
        $ startx

    // Auto Start
        $ vim ~/.bash_profile
            startx

    // Add patch
        // Download patchs from     https://dwm.suckless.org/patches
            // nextprev             https://dwm.suckless.org/patches/nextprev/
            // fullgaps             https://dwm.suckless.org/patches/fullgaps/
        // Install patch
            $ cp ~/Downloads/dwm-fullgaps.diff ~/dwm/dwm-fullgaps.diff
            $ cd ~/dwm
            $ patch < dwm-fullgaps.diff
            $ sudo make clean install

    // List Mod Keys
        $ xmodmap
