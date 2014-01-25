# Powersave #

Had some problems with laptop-mode tools and I don't really care about switching powersave options depending AC or battery mode, therefore all powersave options are static.

Using these options all Powertop tunables are good.
Haswell seem to default to Powersave governor and no configuration was needed.

The DE can fix backlight/suspend powersaving, default values are probably fine.

## modprobe.d ##

* I don't use camera nor bluetooth, blacklist both.
* Standard powersave options for intel sound and intel graphics.

## sysctl.d ##

* Disable watchdog.
* Enable laptop-mode and change dirty_writeback, not sure how big of a difference this makes on a SSD though.

## udev/rules.d ##

* SATA/USB/PCI/Network powersave options. WOL disabled.
