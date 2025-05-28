# base linux grub efibootmgr  dhcpcd iwd networkmanager reflector sudo bash-completion gvim git

# Basics
sudo pacman -S --noconfirm base-devel
sudo pacman -S --noconfirm linux-firmware      
sudo pacman -S --noconfirm linux-lts      
sudo pacman -S --noconfirm linux-headers      

# X11 "Display Server"
sudo pacman -S --noconfirm xorg                
sudo pacman -S --noconfirm xorg-server         
sudo pacman -S --noconfirm xorg-xinit          

# i3 "Window Manager"
sudo pacman -S --noconfirm i3                  

# polybar "Top Bar"
sudo pacman -S --noconfirm polybar

# Rofi "App Launcher"
sudo pacman -S --noconfirm rofi
sudo pacman -S --noconfirm papirus-icon-theme
sudo pacman -S --noconfirm rofi-emoji 
suod pacman -S --noconfirm xdotool
suod pacman -S --noconfirm wtype
sudo pacman -S --noconfirm noto-fonts-emoji
sudo pacman -S --noconfirm ttf-font-awesome

# Picom "Compositor"
sudo pacman -S --noconfirm picom               

# Feh "Window Manager Background"
sudo pacman -S --noconfirm feh                 

# Main Font
sudo pacman -S --noconfirm ttf-hack-nerd       

# Audio
sudo pacman -S --noconfirm pulseaudio          
sudo pacman -S --noconfirm alsa-utils          
sudo pacman -S --noconfirm pavucontrol          

# Scrot "Screenshot"
sudo pacman -S --noconfirm scrot


# Terminal
sudo pacman -S --noconfirm kitty               

# Terminal Tools
sudo pacman -S --noconfirm ranger              
sudo pacman -S --noconfirm yazi                
sudo pacman -S --noconfirm neofetch            
sudo pacman -S --noconfirm btop                
sudo pacman -S --noconfirm tmux
sudo pacman -S --noconfirm calc
sudo pacman -S --noconfirm tldr

# Code Editor "Neovim"
sudo pacman -S --noconfirm neovim              
sudo pacman -S --noconfirm lua
sudo pacman -S --noconfirm xsel                
sudo pacman -S --noconfirm xclip
git clone https://github.com/NvChad/starter ~/.config/nvim

# Browser "Firefox"
sudo pacman -S --noconfirm firefox             

# TTY Font
sudo pacman -S --noconfirm terminus-font       

# DELL Laptop
sudo pacman -S --noconfirm broadcom-wl         
sudo pacman -S --noconfirm xf86-video-intel    
