# Power Button Suspend
    $ sudo nvim /etc/systemd/logind.conf
        HandlePowerKey=suspend
# Connect to ftp
    $ sudo pacman -S filezilla
    $ filezilla
# CPU Power
    $ sudo pacman -S cpupower
    $ sudo cpupower --cpu all frequency-set  --max 800MHz
    $ sudo cpupower --cpu all frequency-set --governor powersave
        // (powersave || performance || ondemand || conservative || userspace)
    $ sudo nvim /etc/default/cpupower
        governor='performance'
        min_freq="500MHz"
        max_freq="1200MHz"

