#!/bin/bash

sudo mkdir -p /usr/share/themes/Dracula
sudo mkdir -p ~/.themes/Dracula

#### Font yükleme


wget https://github.com/dracula/gtk/files/5214870/Dracula.zip
unzip ~/Downloads/tema/Dracula.zip -d ~/Downloads/tema
### Dracula tema indirme

git clone https://github.com/dracula/gtk.git
unzip ~/Downloads/tema/gtk-master.zip -d ~/Downloads/tema

### Gerekli Dosyaları Taşıma
sudo cp -r ~/Downloads/tema/Dracula/ /usr/share/icons/
sudo cp -r ~/Downloads/tema/Dracula/ /.icons/

sudo cp -r ~/Downloads/tema/gtk/* /usr/share/themes/Dracula
sudo cp -r ~/Downloads/tema/gtk/* /usr/share/themes/Dracula

mv ~/Downloads/tema/backgrounds/* ~/.local/share/backgrounds/


### Temaları Geçerli yapma
gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"
gsettings set org.gnome.desktop.interface icon-theme "Dracula"

git clone https://github.com/murat-akpinar/dotfile.git
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

