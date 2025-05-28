# Change Font Size
```Bash
setfont ter-132b
```
# Connect To WiFi
```Bash
iwctl
    device list
    device list
    station wlan0 connect "Idoom 4G_B69C1"
        // Enter passwd
    exit
```
# Setup SSD
```Bash
cfdisk /dev/sda
    # Delete All Partitions
    # Boot Partition
        # Make New Partition   = 1G
        # Partition Type       = EFI System
    # Swap Partition
        # Make new partition   = 4G
        # Partition Type       = Linux swap
    # Root Partition
        # Make new partition   = 50G
        # Partition Type       = Linux root (x86-64)
    # Home Partition
        # Make new partition   = 100G
        # Partition Type       = Linux home
    # Write and Quit
```
```Bash
# To get some information about your partitions
lsblk 
blkid
fdisk
gdisk
```
# Active Swap
```Bash
mkswap /dev/sda2
swapon /dev/sda2
```
# Format Partitions
```Bash
mkfs.fat -F32 /dev/sda1
mkfs.ext4     /dev/sda3
mkfs.ext4     /dev/sda4
```
# Mounting Partitions
```Bash
mount /dev/sda3 /mnt
mount --mkdir /dev/sda1 /mnt/boot
mount --mkdir /dev/sda4 /mnt/home
```
# Select Mirrors
```Bash
reflector --save /etc/pacman.d/mirrorlist --country Germany --latest 20
```
# Install
```Bash
pacstrap /mnt base base-devel linux linux-firmware grub efibootmgr gvim dhcpcd iwd networkmanager sudo broadcom-wl xf86-video-intel reflector bash-completion git ranger
```
# Configure your fstab
```Bash
genfstab -U -p /mnt >> /mnt/etc/fstab
```
# Change root
```Bash
arch-chroot /mnt
```
# Configuration Local
```Bash
vim /etc/locale.gen
	// Uncomment # en_US.UTF-8
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
export LANG=en_US.UTF-8
```
# Configuration Timzone
```Bash
rm -rf /etc/localtime
ln -s /usr/share/zoneinfo/Africa/Algiers /etc/localtime
hwclock --systohc
```
# Edit Hosts
```Bash
echo NabilArch > /etc/hostname
vim /etc/hosts
	127.0.0.1 NabilArch.localdomain NabilArch
```
# Root Password
```Bash
passwd
	// Enter root passwd
```
# Add User
```Bash
useradd -m -g users -G wheel,storage,power,log,video,audio -s /bin/bash nabil
passwd nabil
	// Enter user passwd
EDITOR=vim visudo
	// Uncomment # %wheel ALL=(ALL) ALL
	// Uncomment # %wheel ALL=(ALL) NOPASSWD: ALL
```
# Install bootloader
```Bash
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=myGrub --removable
grub-mkconfig -o /boot/grub/grub.cfg
```
# Enable Network services
```Bash
systemctl enable dhcpcd
systemctl enable iwd
```
# Exit And Reboot
```Bash
exit
umount -R /mnt
reboot
// remove your USB
```
