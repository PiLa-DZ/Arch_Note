# Set Font On tty
    // All System Fonts
        $ ls /usr/share/kbd/consolefonts

    // See Current Font How it lock
        $ showconsolefont

    // Install New Font
        $ sudo pacman -S terminus-font
        $ setfont ter-132b
        $ sudo vim /etc/vconsole.conf
            FONT=ter-132b
        $ reboot

    // Default Font
        $ setfont
