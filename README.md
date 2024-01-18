# Getting microphone to work

```
# install pulse audio control
sudo apt install pavucontrol

# install alsa tools gui
sudo apt install alsa-tools-gui

# launch hdajackretask
hdajackretask

# set select Conexant CX20590 codec
# Set Black Mic, Right Side [x] Override and "Not connected" then click "Install boot override" and reboot system
```

# Email
neomutt

# nmcli
1. install network-manager
sudo apt install network-manager

2. comment out the following lines

			allow-hotplug wlp3s0
			iface wlp3s0 inet dhcp
				wpa-ssid Honeydukes2
				wpa-psk xxxxxxx
3. reboot
