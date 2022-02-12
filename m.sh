#!/usr/bin/bash
 
sudo iwconfig

# Asking User About Interface Name
echo "Iface : "
read iface

# Let User To Choose Between Enabling Or Disabling Monitor Mode
echo " 1- (Enable)  2- (Disable) "
read ch


if [ "$ch" -eq 1 ]
then
	echo " Enabling Monitor Mode ..."
	sudo ip link set $iface down
	sudo iw dev $iface set type monitor
	sudo ip link set $iface up
	echo " Done ..."

else 
	echo "Disabling Monitor Mode ..."
	sudo ip link set $iface down
	sudo iw dev $iface set type managed
	sudo ip link set $iface up
	echo "Done ..."

fi
