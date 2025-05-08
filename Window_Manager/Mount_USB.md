# Mount Usb
    // Check if /media/usb  
        $ sudo mkdir -p /media/usb

    // See where are your usb
        $ lsblk

    // Read Only 
        $ sudo mount /dev/sdb1 /media/usb

    // Read and Write
        $ sudo mount -o gid=users,fmask=113,dmask=002 /dev/sdb1 /media/usb

    // Unmount your usb
        $ sudo umount /media/usb
