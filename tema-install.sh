#!/bin/bash

sudo mkdir -p /usr/share/themes/Dracula
sudo mkdir -p ~/.themes/Dracula
sudo mkdir -p /usr/share/fonts/Ubuntu
cd ~/Downloads
### Temalar İndiriliyor ####
git clone https://github.com/murat-akpinar/dotfile.git
git clone https://github.com/dracula/gtk.git
git clone https://github.com/yeyushengfan258/Reversal-icon-theme.git
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/UbuntuMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Ubuntu.zip
### Temalar İndiriliyor ####
cd ~/Downloads/tema
### Reversal-icon-theme ###
bash ~/Downloads/tema/Reversal-icon-theme/install.sh -purple
### Reversal-icon-theme ###

### Dracula Tema ###
unzip ~/Downloads/tema/gtk-master.zip -d ~/Downloads/tema
sudo cp -r ~/Downloads/tema/gtk/* /usr/share/themes/Dracula

gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"
gsettings set org.gnome.desktop.interface icon-theme 'Reversal-purple-dark'
### Dracula Tema ###

### Font ###
sudo unzip ~/Downloads/tema/UbuntuMono.zip -d /usr/share/fonts/Ubuntu
sudo unzip ~/Downloads/tema/Ubuntu.zip -d /usr/share/fonts/Ubuntu
### Font ###

### Wallpaper ###
mv ~/Downloads/tema/backgrounds/* ~/.local/share/backgrounds/
gsettings set org.gnome.desktop.background picture-uri-dark file:///home/$USER/.local/share/backgrounds/samurai.jpg
### Wallpaper ###

### Dotfile ###
bash ~/Downloads/tema/dotfile/setup.sh
cp -r ~/Downloads/tema/dotfile/mytheme.omp.json ~/.poshthemes
bash ~/Downloads/tema/dotfile/alias.sh




source ~/.bash_profile
source ~/.bashrc
source ~/.profile


### Dotfile ###

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
echo "###3"

echo "source ~/.profile"
echo "source ~/.bash_profile"
echo "Bu komutları çalıştırın"


