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




source ~/.bashrc


### Dotfile ###

echo "Gnome Extension list"

echo "1. Blur My Shell"
echo "2. Dash To Dock"
echo "3. Just Prefection"
echo "4. Rounded Corners"
echo "5. User Themes" 
echo "6. Resource Monito"
echo "7. Clipboard Indicator"
echo "###3"

echo "source ~/.bashrc"
echo "Bu komutları çalıştırın"


