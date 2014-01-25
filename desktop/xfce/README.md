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

Check Arch wiki for setting this properly.

## Window manager ##

Xmonad is better and works great with xfce, see desktop/xmonad.
