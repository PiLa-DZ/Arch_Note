# Change Font Size
    $ setfont ter-132b
# Connect To WiFi
    $ iwctl
        $ device list
        $ station wlan0 connect "Idoom 4G_B69C1"
            // Enter passwd
        $ exit
# Setup SSD
	$ cfdisk /dev/sda
		// Delete All Partitions
        // Boot Partition
            // Make New Partition   = 1G
            // Partition Type       = EFI System
        // Swap Partition
            // Make new partition   = 4G
            // Partition Type       = Linux swap
        // Root Partition
            // Make new partition   = 50G
            // Partition Type       = Linux root (x86-64)
        // Home Partition
            // Make new partition   = 100G
            // Partition Type       = Linux home
		// Write and Quit
	// To get some information about your partitions
		$ lsblk 
		$ blkid
        $ fdisk
        $ gdisk
# Active Swap
	$ mkswap /dev/sda2
	$ swapon /dev/sda2
# Format Partitions
	$ mkfs.fat -F32 /dev/sda1
	$ mkfs.ext4     /dev/sda3
	$ mkfs.ext4     /dev/sda4
# Mounting Partitions
	$ mount /dev/sda3 /mnt
    $ mount --mkdir /dev/sda1 /mnt/boot
    $ mount --mkdir /dev/sda4 /mnt/home
# Select Mirrors
    $ reflector --save /etc/pacman.d/mirrorlist --country Germany --latest 20
# Install
	$ pacstrap /mnt 
        base            // Arch Base
        base-devel      // Developer Tools
        linux           // Linux Lernel
        linux-firmware  // Hardware driver
        grub            // Bootloader
        efibootmgr      // EFI Boot Manager
        vim             // Terminal Text Edito
        dhcpcd          // Network Config
        iwd             // Connect To WiFi
        networkmanager  // Connect To WiFi
        broadcom-wl     // "DELL LATITUDE E7450" WiFi Driver
        reflector       // Select Mirrors
        bash-completion // Termanal Auto Complate
        sudo            // Super User Permition
# Configure your fstab
	$ genfstab -U -p /mnt >> /mnt/etc/fstab
# Change root
	$ arch-chroot /mnt
# Configuration Local
	$ vim /etc/locale.gen
		// Uncomment # en_US.UTF-8
	$ locale-gen
	$ echo LANG=en_US.UTF-8 > /etc/locale.conf
	$ export LANG=en_US.UTF-8
# Configuration Timzone
	$ rm -rf /etc/localtime
	$ ln -s /usr/share/zoneinfo/Africa/Algiers /etc/localtime
	$ hwclock --systohc
# Edit Hosts
	$ echo NabilArch > /etc/hostname
	$ vim /etc/hosts
		127.0.0.1 NabilArch.localdomain NabilArch
# Root Password
	$ passwd
		// Enter root passwd
# Add User
	$ useradd -m -g users -G wheel,storage,power,log,video,audio -s /bin/bash nabil
	$ passwd nabil
		// Enter user passwd
	$ EDITOR=vim visudo
		// Uncomment # %wheel ALL=(ALL) ALL
		// Uncomment # %wheel ALL=(ALL) NOPASSWD: ALL
# Install bootloader
	$ grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=myGrub --removable
	$ grub-mkconfig -o /boot/grub/grub.cfg
# Enable Network services
	systemctl enable dhcpcd
	systemctl enable iwd
# Exit And Reboot
	$ exit
	$ umount -R /mnt
	$ reboot
	// remove your USB
