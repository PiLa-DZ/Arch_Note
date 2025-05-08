# Slect Mirrors
    $ sudo pacman -S reflector
    $ sudo reflector --save /etc/pacman.d/mirrorlist --country Germany --latest 20
    $ sudo pacman -Sy
