#! /bin/bash


# // Mouse Config =================================
cp 90-thuchpad.conf /etc/X11/xorg.conf.d/
echo "= Mouse Config =======================> ok <="

# // TTY Fong Config ==============================
if grep -R "#--> From Auto_Setup" /etc/vconsole.conf > /dev/null
then
  echo "" > /dev/null
else
  cat vconsole.conf >> /etc/vconsole.conf
fi
echo "= TTY Font Config ====================> ok <="

# // Grub Config ==================================
sed -i 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=1/' /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
echo "= Grub Config ========================> ok <="

