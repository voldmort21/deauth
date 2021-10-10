#!/usr/bin/bash

# Executing Iwconfig 
sudo iwconfig

# Asking User To Enter Interface Name
echo "Iface : "
read iface

# Asking User To Choose Between Enabling Or Disabling Monitor Mode
echo " 1- (Enable)  2- (Disable) "
read ch

# Doing What User Has Choosen
if [ "$ch" -eq 1 ]
then
	echo " Enabling Monitor Mode ..."
	sudo ip link set $iface down
	sudo iw dev $iface set type monitor
	echo " Done ..."

else 
	echo "Disabling Monitor Mode ..."
	sudo ip link set $iface down
	sudo iw dev $iface set type managed
	echo "Done ..."

fi
