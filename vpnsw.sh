#!/bin/bash

# VPN Switcher

# Switches Wash-DC/UK-London

LONDON=$(piactl set region uk-london)
WASHDC=$(piactl set region us-washington-dc)
REGION=$(piactl get region)

function VPNLONDON() {
	piactl set region uk-london
	echo "Changing Connection to 'UK-London'."
	sleep 3
}

VPNDC() {
	piactl set region us-washington-dc
	echo "Changing Connection to 'Wash-DC'."
	sleep 3
}


echo $REGION

if [[ $REGION == "us-washington-dc" ]]
then
	VPNLONDON
	sleep 1

elif [[ $REGION == "uk-london" ]]
then
	VPNDC
	sleep 1
fi
