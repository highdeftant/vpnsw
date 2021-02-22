#!/bin/bash

# VPN Switcher
# Switches Wash-DC/UK-London

LONDON=$(piactl set region uk-london)
WASHDC=$(piactl set region us-washington-dc)

function VPNLONDON() {
	piactl set region uk-london
	echo "Changing Connection to 'UK-London'."
	sleep 3
}

function VPNDC() {
	piactl set region us-washington-dc
	echo "Changing Connection to 'Wash-DC'."
	sleep 3
}

read -p "Which Region? [london/wash]" ANSWER

if [[ $ANSWER == "london" ]]
then
	VPNLONDON
	sleep 1
fi

if [[ $ANSWER == "wash" ]]
then
	VPNDC
	sleep 1
fi
