i3status --config ~/.config/i3status/config | while :
do
	read line
	playing=$(mpc current)
	echo "$playing | $line" || exit 1
done
