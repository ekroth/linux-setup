# Display manager #

I wanted a pretty display manager which didn't add too many dependencies (when using Xfce).
Lightdm is very customizable and works properly with systemd.

## General ##

* Use ```accountsservice```.
* Install lightdm-gtk3-greeter (I'm using devel, there's probably a good reason for that?).
* lightdm.conf is fine, just change ```greeter-session=lightdm-gtk-greeter```.

## gtk ##

Now here's room for configuration!
First of, install the ```Numix``` theme, the git version (since the start of 2014 or something) supports lightdm.

Edit the file ```/etc/lightdm/lightdm-gtk-greeter.conf```.
