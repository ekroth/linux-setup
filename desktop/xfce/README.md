# xfce #

I just installed the whole default xfce group in Arch, it's quite small and contains a lot of goodies.

## Theme ##

```Numix``` is a great theme, the icons as well. Make sure to use a version later than January 2014, it supports lightdm as well. Theming is a bit.. odd and I just set all possible places to set the theme. 

```Vanilla-DMZ``` cursor theme with cursor size ```48```.

* ```Xfce Appearance```, works as expected, remember DPI setting as well. ```.Xresources``` (```/root``` and ```home```) might be required for font settings. This seems to be enough for the theme settings.
* Set the mouse cursor in ```Xfce Mouse and Touchpad```, as well as ```.Xdefaults``` in both ```/root``` and ```home```.


## Panel and icon sizes ##

It's possible to set the icon size in xfce panel.

Edit ```~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml``` set this line:
```<property name="IconSizes" type="string" 
value="gtk-menu=16,16:gtk-button=22,22:panel-tasklist-menu=48,48:panel-applications-menu=48,48:panel-directory-menu=48,48"/>```

## Firefox DPI ##

* Check Arch wiki for setting this properly. (Well that was useful information ey?)
* Use ```FXChrome``` theme and hide the menu bar. 

## Composition ##

```Compton``` is the way to go. These parameters work really well.
```compton -c -r8 -l-12 -t-8  -b  -G  -f -D30 -I0.45 -O0.45  --paint-on-overlay --unredir-if-possible  --backend glx --glx-no-stencil --glx-no-rebind-pixmap```

## Screen locker ##

```light-locker``` uses ```lightdm``` in order to lock the screen, this works quite well with ```xflock4``` (used by xfce), use the following symlink in ```/usr/bin```: ```gnome-screensaver-command -> light-locker-command```.

## Powersave ##

Set any options in Xfce Power Manager, however don't toggle "Lock when suspend/hibernate". Some kind of bug that the power manager starts failing after resume.

## Volume control ##

Install ```xfce4-volumed-pulse``` and the volume buttons should work.

## Window manager ##

Xmonad is better and works great with xfce, see desktop/xmonad.

## Wallpaper ##

Set the wallpaper to ```/usr/local/share/wallpapers/default``` to use the same as lightdm.
