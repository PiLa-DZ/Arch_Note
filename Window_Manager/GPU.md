# Get Intel GPU
    $ lspci | grep -i vga
    $ lsmod | grep i915
    $ sudo pacman -S mesa
        $ glxinfo | grep "OpenGL renderer"

    $ sudo pacman -S libva-utils
    $ sudo pacman -S libva-intel-driver
    $ vainfo

    // For Intel
        $ sudo pacman -S intel-gpu-tools
        $ sudo intel_gpu_top

        $ sudo pacman -S mesa-demos
        $ glxgears

    // For Amd and Nvidia
        $ sudo pacman -S nvtop
        $ nvtop
        $ sudo pacman -S radeontop
        $ radeontop
        $ sudo pcaman -S s-tui
        

