#!/bin/bash

# i3lock blurred screen inspired by /u/patopop007 and the blog post
# http://plankenau.com/blog/post-10/gaussianlock

# Timings are on an Intel i7-2630QM @ 2.00GHz

# Dependencies:
# imagemagick
# i3lock
# scrot (optional but default)

killall -SIGUSR1 dunst # pause

IMAGE=/tmp/i3lock.png
case "$1" in
	pub) SCREENSHOT="scrot $IMAGE" ;; # 0.46s
	*) variety --get | cut -d$'\n' -f 2 | xargs -i cp {} /tmp/i3lock.png ;;
esac

# Alternate screenshot method with imagemagick. NOTE: it is much slower
# SCREENSHOT="import -window root $IMAGE" # 1.35s

# Here are some imagemagick blur types
# Uncomment one to use, if you have multiple, the last one will be used

# All options are here: http://www.imagemagick.org/Usage/blur/#blur_args
BLURTYPE="0x8" # 7.52s
#BLURTYPE="0x2" # 4.39s
#BLURTYPE="5x2" # 3.80s
#BLURTYPE="2x8" # 2.90s
#BLURTYPE="2x3" # 2.92s

# Get the screenshot, add the blur and lock the screen with it
$SCREENSHOT
convert $IMAGE -blur $BLURTYPE $IMAGE
i3lock -i $IMAGE -eft
rm $IMAGE
killall -SIGUSR2 dunst # pause
