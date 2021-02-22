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

while true
do
if [[ $ANSWER == "london" ]]
then
	VPNLONDON
	sleep 1

elif [[ $ANSWER == "wash" ]]
then
	VPNDC
	sleep 1
fi
