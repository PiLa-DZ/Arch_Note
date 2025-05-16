# For DELL Laptop you have to install
    $ sudo pacman -S xf86-video-intel    

# Screen Light Up
    $ xbacklight -inc 20 # increase screen brightness
# Screen Light Down
    $ xbacklight -dec 20 # decrease screen brightness


# Old Note ==================================================
#####################################################
sudo apt install xbacklight
xbackligh -dec 10
xbackligh -inc 10

#####################################################
# Using xrandr
$ sudo apt-get install x11-xserver-utils # install xrandr

$ xrandr
$ xrandr --listmonitors
$ xrandr --output Screen_Neme_ --gamma Value_:Value_:Value_

#####################################################
# Using xgamma
$ xgamma
$ xgamma -gamma Value_
$ xgamma -rgamma V_ -ggamma V_ -bgamma V_

#####################################################
$ ls /sys/class/backlight	# What is your screen


#####################################################
# Using light
$ sudo apt install light
$ light -L # For list device

$ sudo chmod +s /usr/bin/light

$ light -G # Show screen brightness
$ light -S V_	# Set screen brightness
$ light -A V_	# Up screen brightness
$ light -U V_	# Down screen brightness

#####################################################
# Using brillo
$ git clone https://gitlab.com/cameronnemo/brillo.git
$ cd brillo/
$ make
$ sudo make install.setgid
# You have to change mode
	$ sudo chmod 777 /sys/class/backlight/acpi_video0/brightness
$ brillo	# show screen brightness
$ brillo -q -A # Up screen brightness
$ brillo -q -U # Down screen brightness
# Add shortcut key for i3WM
	# Up/Down Screen brightness
	bindsym $mod+shift+equal exec brillo -q -A 10
	bindsym $mod+shift+minus exec brillo -q -U 10
$ brillo -c -S V_	# Set min screen brightness

