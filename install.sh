#!/bin/bash

clear

sudo pacman -S i3-wm i3lock feh terminator firefox rofi polybar picom btop thunar thunar-volman gvfs gvfs-mtp lxappearance nwg-look ttf-font-awesome otf-font-awesome ttf-cascadia-code-nerd materia-gtk-theme papirus-icon-theme mate-polkit lightdm lightdm-gtk-greeter brightnessctl pavucontrol xdg-user-dirs
sudo systemctl enable lightdm

rm -rf /home/$USER/.config/i3
cp -r /home/$USER/dotfiles/i3 /home/$USER/.config/i3

rm -rf /home/$USER/wallpaper
cp -r /home/$USER/dotfiles/wallpaper /home/$USER/wallpaper

mkdir -p "/home/$USER/.local/share/fonts"
cp -rf /home/$USER/dotfiles/polybar/fonts/* /home/$USER/.local/share/fonts

rm -rf /home/$USER/.config/polybar
cp -rf /home/$USER/dotfiles/polybar/simple /home/$USER/.config/polybar

rm -rf /home/$USER/.config/gtk-3.0
cp -r /home/$USER/dotfiles/gtk-3.0 /home/$USER/.config/gtk-3.0

rm -rf /home/$USER/.config/terminator
cp -r /home/$USER/dotfiles/terminator /home/$USER/.config/terminator

rm -rf /home/$USER/.config/nwg-look
cp -r /home/$USER/dotfiles/nwg-look /home/$USER/.config/nwg-look

chmod -R +x /home/$USER/.config/polybar/

xdg-user-dirs-update

echo "Installation finished. Please reboot your system."
