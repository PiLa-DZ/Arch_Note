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

# // TTY Config ===================================
# // You have to be root to do it !!!!!!!!!!!!!!!!!
# cat vconsole.conf >> /etc/vconsole.conf
echo "= Edit TTY Config ====================> No <="
echo "=  -> You Have To Be Root To Do It <- > !! <="

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
