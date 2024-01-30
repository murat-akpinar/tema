#!/bin/bash

echo "Lütfen https://www.pling.com/p/1939902/ bu dosyaları indirin"

echo "Video Link : https://www.youtube.com/watch?v=7JJmCAJs9pM"



cd ~/Download/tema

git clone https://github.com/vinceliuice/Orchis-theme.git
bash Orchis-theme/install.sh
bash Orchis-theme/install.sh -l


git clone https://github.com/TaylanTatli/Sevi.git
bash ~/Downloads/tema/Sevi/install.sh
bash ~/Downloads/tema/Sevi/install.sh -a


unzip ~/Downloads/tema/Orchis-Shell-MOD.zip -d ~/.themes/
unzip ~/Downloads/tema/fonts.zip -d ~/.local/share/

mv ~/Downloads/tema/backgrounds/* ~/.local/share/backgrounds/


echo "Gnome Extension list"
echo "1. Applndicator and KSatusNotifierItem Sport"
echo "2. Aylur's Widgets"
echo "3. Blur My Shell"
echo "4. Coverflow Alt-Tab"
echo "5. Dash To Dock"
echo "6. GSConnect"
echo "7. Just Prefection"
echo "8. Rounded Window Corners"
echo "9. Rounded Corners"
echo "10. User Themes" 
echo "11. Resource Monito"
echo "12. Clipboard Indicator"

echo "dconf load /org/gnome/shell/extensions/ < gnome-extensions-settings.conf"
echo "Bu komutu her şey yaptıktan sonra çalıştır"
