#!/bin/bash

# VPN Switcher
# Switches Wash-DC/UK-London

LONDON=$(piactl set region uk-london)
WASHDC=$(piactl set region us-washington-dc)

function VPNLONDON() {
	piactl set region uk-london
	echo "Changing Connection to 'UK-London'."
}

function VPNDC() {
	piactl set region us-washington-dc
	echo "Changing Connection to 'Wash-DC'."
}

read -p "Which Region? [london/wash]" ANSWER

if [[ $ANSWER == "london" ]]
then
	echo "Connecting to UK-London..."
	VPNLONDON
	sleep 1
fi

if [[ $ANSWER == "wash" ]]
then
	echo "Connect to Wash-DC"
	VPNDC
	sleep 1
fi
