# Auto Login
    $ sudo nvim /etc/systemd/system/getty.target.wants/getty@tty1.service
        // Edit this line
            ExecStart=-/sbin/agetty -o '-- \\u' --noreset --noclear - ${TERM}
        // To this line
            ExecStart=-/sbin/agetty -a nabil - ${TERM}
    $ reboot
            

