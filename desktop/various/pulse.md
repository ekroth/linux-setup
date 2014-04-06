Network sink in Pulseaudio
=============================================

One alternative is to use Avahi and automatically discover
the available sinks, but this doesn't work so well when
restarting computers etc. This guide uses a static IP and sink.

Sink computer
-------------
This can also be done directly in ```/etc/pulse/default.pa```, but 
the GUI works fine.

* Start ```paprefs``` and enable ```Enable network access to local sound device``` 
and its sub options.
* Find out the name of the output sink, this can be done using 

```$ pactl list | grep "Name: alsa_output"```.

Source computer
---------------
Run the command

```$ pacmd load-module module-tunnel-sink-new server=<ip> sink=<output sink> sink_name=<any name>```

The network sink will now be available in output devices, check ```pavucontrol```. 
Add the part without ```pacmd``` to ```/etc/pulse/default.pa``` to make it permanent.

Please note that there are two different modules (this will change in PA 5.0), ```module-tunnel-sink```
and ```module-tunnel-sink-new```, try both. I got less stuttering with ```new```, but there's
a longer delay (0.5 seconds vs 2.0 seconds).

Done!

Stuttering
----------
If you're using wireless on the client or server, there might be some
stuttering once in a while. This happens when the network manager scans
the network. Try streaming some audio and run this

```# iwlist scan```

If this causes stuttering the problem can be fixed in two ways. Recompile
network manager and apply a fix, I haven't tried this. The alternative is
to edit the current connection for the network and set the ```BSSID``` option. 
This disables the network scanning while connected to this particular network.
