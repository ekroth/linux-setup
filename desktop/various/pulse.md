Network sink in Pulseaudio
=============================================

One alternative is to use Avahi and automatically discover
the available sinks, but this doesn't work so well when
restarting computers etc. This guide uses a static IP and sink.

Sink computer
-------------
This can also be done directly in ```default.pa```, but 
the GUI works fine.

* Start ```paprefs``` and enable ```Enable network access to local sound device``` 
and its sub options.
* Find out the name of the output sink, this can be done using ```pactl list | grep "Name: alsa_output"```.

Source computer
---------------
Edit ```/etc/pulse/default.pa```, and add the line
```load-module module-tunnel-sink-new server=<ip> sink=<output sink> sink_name=<name>```.

The network sink will now be available in output devices, check ```pavucontrol```. 

Done!
