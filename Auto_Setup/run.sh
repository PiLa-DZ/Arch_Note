#!/bin/bash

# // Pacman Mirrorlist ============================
sudo reflector --save /etc/pacman.d/mirrorlist --country Germany --latest 20 --protocol http
echo "= Pacman Mirrorlist ==================> ok <="

# // Install All Apps =============================
./App_Install.sh
echo "= Install Apps =======================> ok <="

# // Xinitrc Config ===============================
cp .xinitrc ~/.xinitrc
echo "= Copy .xinitrc ======================> ok <="

# // Kitty Config =================================
cp -r kitty ~/.config
echo "= Copy Kitty Config ==================> ok <="

# // Past Background Imange =======================
cp -r Wallpaper ~/.config
echo "= Copy Wallpaper Directory ===========> ok <="


# // i3 Confog ====================================
cp -r i3 ~/.config
echo "= i3 Config ==========================> ok <="

# // Polybar Config ===============================
cp -r polybar ~/.config
echo "= Polybar Config =====================> ok <="

# // Picom Config =================================
cp -r picom ~/.config
echo "= Picom Config =======================> ok <="

# // Bachrc Config ================================
if grep -R "#--> From Auto_Setup" ~/.bashrc > /dev/null
then
  echo "" > /dev/null
else
  cat .bashrc >> ~/.bashrc
fi
echo "= Bashrc Config ======================> Ok <="

# // Bach_Profile Config ==========================
if grep -R "#--> From Auto_Setup" ~/.bash_profile > /dev/null
then
  echo "" > /dev/null
else
  cat .bash_profile >> ~/.bash_profile
fi
echo "= Bash_Profile Config ================> Ok <="

# // Git Confing ==================================
./Git_Config.sh
echo "= Git Config =========================> ok <="

# // Touchpad Speed ===============================
xinput set-prop "$(xinput list --name-only | grep -i touch)" "libinput Accel Speed" 0.5
echo "= Touchpad Speed =====================> ok <="

echo ""
echo "=  -> Reboot To Finish             <- > !! <="

# reboot
# End -------------------------------------------------------------------------
# // ==============================================
: '
if [ -e PATH ]
then
  echo "ok"
else
  echo "nok"
fi
echo "======================================> ok <="
'
