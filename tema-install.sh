#!/bin/bash

echo "Lütfen https://www.pling.com/p/1939902/ bu dosyaları indirin"

echo "Video Link : https://www.youtube.com/watch?v=7JJmCAJs9pM"



cd ~/Download/tema
sudo mkdir /usr/share/themes/
sudo mkdir ~/.themes/
#### Font yükleme

git clone https://github.com/vinceliuice/Tela-circle-icon-theme.git
sudo bash Tela-circle-icon-theme/install.sh -n dracula


git clone https://github.com/dracula/gtk.git

unzip ~/Downloads/tema/gtk-master.zip -d ~/.themes/
unzip ~/Downloads/tema/gtk-master.zip -d /usr/share/themes/

mv ~/Downloads/tema/backgrounds/* ~/.local/share/backgrounds/

gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"
gsettings set org.gnome.desktop.interface icon-theme "Dracula"


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

