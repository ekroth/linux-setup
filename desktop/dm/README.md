# Display manager #

I wanted a pretty display manager which didn't add too many dependencies (when using Xfce).
Lightdm is very customizable and works properly with systemd.

## General ##

* Use ```accountsservice```.
* Install ```lightdm-gtk3-greeter``` (I'm using devel, there's probably a good reason for that?).
* ```lightdm.conf``` is fine, just change ```greeter-session=lightdm-gtk-greeter```.

## gtk ##

Now here's room for configuration!
First of, install the ```Numix``` theme, the git version (since the start of 2014 or something) supports lightdm.

Edit the file ```/etc/lightdm/lightdm-gtk-greeter.conf```.

```
background=/usr/local/share/wallpapers/default
theme-name=Numix
icon-theme-name=Numix
font-name=Sans 10
xft-antialias=true
xft-dpi=180
xft-rgba=rgb
show-clock=true
clock-format=%H:%M
```

Easy enough. Changing theme is fine, just make sure theme supports lightdm. 180 DPI is good for 13" Retina.

Oh wait, the mouse cursor is all wrong. Supply a proper ```/root/.Xresources``` and (not sure if needed) ```/root/.Xdefaults```.

### Random wallpaper ###

Created a small script for randomizing wallpapers. Put the wallpapers in ```/usr/local/share/wallpapers``` and install ```random-wallpaper.service``` (see systemd directory). Choose background in ```lightdm-gtk3-greeter``` to ```/usr/local/share/wallpapers/default```.
