#!/bin/bash

DOWNLOAD=~/Download/tema
SHARE_THEME=/usr/share/themes/Dracula
HOME_THEME=~/.themes/Dracula
SHARE_ICON=/usr/share/icons/
HOME_ICON=~/.icons/


sudo mkdir /usr/share/themes/Dracula
sudo mkdir ~/.themes/Dracula

#### Font yükleme
cd $DOWNLOAD
git clone https://github.com/dracula/gtk/files/5214870/Dracula.zip
unzip ~/Downloads/tema/Dracula.zip -d $DOWNLOAD
### Dracula tema indirme

git clone https://github.com/dracula/gtk.git
unzip ~/Downloads/tema/gtk-master.zip -d $DOWNLOAD

### Gerekli Dosyaları Taşıma
cp ~/Downloads/tema/Dracula/ $SHARE_ICON
cp ~/Downloads/tema/Dracula/ $HOME_ICON

cp ~/Downloads/tema/gtk/* $SHARE_THEME
cp ~/Downloads/tema/gtk/* $HOME_THEME

mv ~/Downloads/tema/backgrounds/* ~/.local/share/backgrounds/


### Temaları Geçerli yapma
gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"
gsettings set org.gnome.desktop.interface icon-theme "Dracula"


echo "Gnome Extension list"
echo "1. Applndicator and KSatusNotifierItem Sport"
echo "2. Aylur's Widgets"
echo "3. Blur My Shell"
echo "4. Coverflow Alt-Tab"
echo "5. Dash To Dock"
echo "6. Just Prefection"
echo "7. Rounded Window Corners"
echo "8. Rounded Corners"
echo "9. User Themes" 
echo "10. Resource Monito"
echo "11. Clipboard Indicator"

