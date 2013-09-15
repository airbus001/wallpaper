#!/bin/bash
#Select Random Wallpaper
#
app=".{jpg,JPG,jpeg,JPEG,png,PNG,svg,SVG}"
files=()
#
for arg 
do
	if [ -d "$arg" ]; then
			files+=($arg/*)
	else
			#espeak "The wallpaper script failed." #optional if you have espeak
			echo "Usage: sh .wallpaper.sh dir1 ... dirn" 1>&2
			exit 1
	fi
done
#
if [ -v files ]; then
		N=${#files[@]}					#Number of members in the array
		while [ true ]					#Loop forever
		do
    			((n=$RANDOM%N))
    			randomfile=${files[$n]}
    			feh --bg-max $randomfile
			    if [ $? != 0 ]; then
				    continue
			    fi
    			sleep 10m 
		done
fi
exit 1
