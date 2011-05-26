# This shell script is run before Openbox launches.
# Environment variables set here are passed to the Openbox session.

# Set a background color
BG=""
if which hsetroot >/dev/null 2>&1; then
    BG=hsetroot
else
    if which esetroot >/dev/null 2>&1; then
	BG=esetroot
    else
	if which xsetroot >/dev/null 2>&1; then
	    BG=xsetroot
	fi
    fi
fi
test -z $BG || $BG -solid "#303030"

source ~/.fehbg

tint2 &

if xrandr | grep '1680.*+'; then
	 xrandr --output VGA1 --rotate left
fi


# Trackpoin
# Vertical
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 8 1
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 8 2
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Timeout" 8 200
# Horizontal
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 8 6 7 4 5
