#!/bin/bash

#Create an array suing the output of ifconfig which has the names of the network interfaces in it.
#Use those names to extract the ip addresses of the interfaces, also using ifconfig output.
#Also parse the output of the route -n to display the ip address of the default gateway.

#build interfaces array with interface names of elements
interfaces=( $(ifconfig | grep '^[A-Za-z]' | awk '{print $1}') )

#find the ip address of the interfaces
ip0=$(ifconfig ${interfaces[0]} | sed -n '/inet addr:/s/.*addr:\([0-9.][0-9.]*\).*/\1/p')
ipb0=$(ifconfig ${interfaces[0]} | sed -n '/Bcast:/s/.*Bcast:\([0-9.][0-9.]*\).*/\1/p')
ip1=$(ifconfig ${interfaces[1]} | sed -n '/inet addr:/s/.*addr:\([0-9.][0-9.]*\).*/\1/p')
ipb1=$(ifconfig ${interfaces[1]} | sed -n '/Bcast:/s/.*Bcast:\([0-9.][0-9.]*\).*/\1/p')

#extract the default gateway ip from the route table

gw=$(route -n | awk '/^0.0.0.0/{print $2}')

echo "Interface ${interfaces[0]} has ip address $ip0"
echo "Interface ${interfaces[0]} has bcast address $ipb0"
echo "Interface ${interfaces[1]} has ip address $ip1"
echo "Interface ${interfaces[1]} has bcast address $ipb1"
echo "My default gateway is $gw"


