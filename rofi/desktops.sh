#! /bin/bash

desktopList=`bspc query -D --names`
desktopFocused=`bspc query -D --names -d focused`

function printDesktops {
	for desktop in $desktopList; do
  		if [ x"$desktop" == x"$desktopFocused" ] ; then
			echo "->" $desktop
		else
			echo $desktop
		fi
 	done
	echo "-----------"
 	echo "New Desktop"

}

if [ "$@" ] ; then
	if [ x"$@" == x"New Desktop" ]; then
		echo "" > /dev/null
	elif [ x"$@" == x"-----------" ]; then
		printDesktops
 	else
  		bspc desktop -f $@ > /dev/null
  		exit 0
 	fi
else
	printDesktops
fi
