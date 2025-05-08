# Auto Start Grub
    $ sudo nvim /etc/default/grub
        // Edit this line
            GRUB_TIMEOUT=5
        // To this line
            GRUB_TIMEOUT=0
    $ sudo grub-mkconfig -o /boot/grub/grub.cfg
    $ reboot
