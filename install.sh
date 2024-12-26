#!/bin/bash
pacman -S i3-wm i3lock feh terminator firefox rofi polybar picom btop thunar lxappearance nwg-look ttf-font-awesome otf-font-awesome ttf-cascadia-code-nerd materia-gtk-theme papirus-icon-theme mate-polkit lightdm lightdm-gtk-greeter

systemctl enable lightdm

rm -rf "~/.config/i3"
cp "~/dotfiles/i3" "~/.config/i3"

rm -rf "~/wallpaper"
cp "~/dotfiles/wallpaper" "~/wallpaper"

[[ ! -d "~/.local/share/fonts"]] && mkdir -p "~/.local/share/fonts"
cp -rf "~/dotfiles/polybar/fonts/*" "~/.local/share/fonts"

rm -rf "~/.config/polybar"
cp -rf "~/dotfiles/polybar/simple" "~/config/polybar"

rm -rf "~/.config/gtk-3.0"
cp "~/dotfiles/gtk-3.0" "~/.config/gtk-3.0"

rm -rf "~/.config/terminator"
cp "~/dotfiles/terminator" "~/.config/terminator"

rm -rf "~/.config/nwg-look"
cp "~/dotfiles/nwg-look" "~/.config/nwg-look"

echo "Installation finished. Please reboot your system."
