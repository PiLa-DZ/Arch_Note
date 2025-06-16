# Touchpad Config
    $ sudo vim /etc/X11/xorg.conf.d/90-thuchpad.conf
        Section "InputClass"
            Identifier "touchpad"
            MatchIsTouchpad "on"
            Driver "libinput"
            Option "Tapping" "on"
            Option "NaturalScrolling" "on"
            Option "ScrollMethod" "twofinger"
            Option "TappingButtonMap" "lrm"
        EndSection

# Touchpad Speed
## Get Touchpad Device
	$ xinput list
	$ xinput list-props Device_ID_
	$ xinput set-prop Device_ID_ Property_ID_ Value_
## Example
		$ xinput list				# Get touchpad id
		$ xinput list-props 12		# Get speed property id
		$ xinput set-prop 13 328 1 # Set touchpad speed
## Change Touchpad Speed in One Commend
    $ xinput set-prop "$(xinput list --name-only | grep -i touch)" "libinput Accel Speed" 0.7

# hide mouse cursor on arch
```Bash
sudo pacman -S unclutter
unclutter
```
```
```
