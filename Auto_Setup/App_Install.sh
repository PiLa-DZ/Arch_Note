# base linux grub efibootmgr  dhcpcd iwd networkmanager reflector sudo bash-completion gvim
sudo pacman -S --noconfirm git                 
sudo pacman -S --noconfirm base-devel
sudo pacman -S --noconfirm linux-firmware      
sudo pacman -S --noconfirm broadcom-wl         
sudo pacman -S --noconfirm xf86-video-intel    
sudo pacman -S --noconfirm pulseaudio          
sudo pacman -S --noconfirm alsa-utils          
sudo pacman -S --noconfirm xorg                
sudo pacman -S --noconfirm xorg-server         
sudo pacman -S --noconfirm xorg-xinit          
sudo pacman -S --noconfirm xsel                
sudo pacman -S --noconfirm i3                  
sudo pacman -S --noconfirm dmenu               
sudo pacman -S --noconfirm picom               
sudo pacman -S --noconfirm feh                 
sudo pacman -S --noconfirm kitty               
sudo pacman -S --noconfirm ranger              
sudo pacman -S --noconfirm yazi                
sudo pacman -S --noconfirm firefox             
sudo pacman -S --noconfirm neofetch            
sudo pacman -S --noconfirm btop                
sudo pacman -S --noconfirm ttf-hack-nerd       
sudo pacman -S --noconfirm terminus-font       
sudo pacman -S --noconfirm polybar

sudo pacman -S --noconfirm neovim              
sudo pacman -S --noconfirm lua
git clone https://github.com/NvChad/starter ~/.config/nvim
