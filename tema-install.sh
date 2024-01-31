#!/bin/bash

sudo mkdir /usr/share/themes/Dracula
sudo mkdir ~/.themes/Dracula

#### Font yükleme
cd ~/Download/tema

git clone https://github.com/murat-akpinar/dotfile.git



git clone https://github.com/dracula/gtk/files/5214870/Dracula.zip
unzip ~/Downloads/tema/Dracula.zip -d ~/Download/tema
### Dracula tema indirme

git clone https://github.com/dracula/gtk.git
unzip ~/Downloads/tema/gtk-master.zip -d ~/Download/tema

### Gerekli Dosyaları Taşıma
cp ~/Downloads/tema/Dracula/ /usr/share/icons/
cp ~/Downloads/tema/Dracula/ /.icons/

cp ~/Downloads/tema/gtk/* /usr/share/themes/Dracula
cp ~/Downloads/tema/gtk/* /usr/share/themes/Dracula

mv ~/Downloads/tema/backgrounds/* ~/.local/share/backgrounds/


### Temaları Geçerli yapma
gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"
gsettings set org.gnome.desktop.interface icon-theme "Dracula"


bash ~/Download/tema/dotfile/setup.sh
bash ~/Download/tema/dotfile/alias.sh


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

