#!/bin/bash

# VPN Switcher

# Switches Wash-DC/UK-London

LONDON=$(piactl set region uk-london)
WASHDC=$(piactl set region us-washington-dc)
REGION=$(piactl get region)


echo $REGION

if [[ $REGION = "uk-london" ]]
then
	echo $WASHDC
	echo "Changing Connection to 'Wash-DC'."
	sleep 9

elif [[ $REGION = "uk-london" ]]
then
	echo $LONDON
	echo "Changing Connection to 'UK-London'."
	sleep 9
fi

exit

