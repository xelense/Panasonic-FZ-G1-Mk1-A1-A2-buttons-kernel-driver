# Panasonic-FZ-G1-Mk1-A1-A2-buttons-kernel-driver
Panasonic tablet  FZ-G1 Mk1 modified driver for keys A1&amp;A2

This driver enables the 'A' buttons on the FZ-G1 Mk1.

## Usage
cd panasonic-tbtn
make all
make install

depmod -a
modprobe panasonic-tbtn

then add shortcut for this buttons at Plasma(?) settings

#Tested with FZ-G1 mk1 with Kubuntu 24.10 Oracular with kernel 6.11.0-18-amd64

