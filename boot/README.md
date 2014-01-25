# Boot-like options #

GRUB and kernel parameters, this includes (for some reason) fstab as well.

## GRUB ##

### Menu ###
```
GRUB_TIMEOUT=0
GRUB_FORCE_HIDDEN_MENU="true"
```

It's sweet to disable the menu. It's possible to show the menu when holding down shift:
https://github.com/hobarrera/grub-holdshift

### Macbook specific ###

#### kernel parameters ####

```
GRUB_CMDLINE_LINUX_DEFAULT="quiet libata.force=noncq rootflags=data=writeback"
```

noncq is (sadly) required in order to not get SSD lockups.

#### GRUB generation ####

```
grub-mkconfig -o /boot/grub/grub.cfg
grub-mkstandalone -o boot.efi -d usr/lib/grub/x86_64-efi -O x86_64-efi --compress=xz /boot/grub/grub.cfg
```

See this guide for partition setup and installation:
https://vec.io/posts/use-arch-linux-and-xmonad-on-macbook-pro-with-retina-display

## fstab ##

* Use discard and noatime for SSD.
* Use automount for drives not residing on the home nor root drive.
