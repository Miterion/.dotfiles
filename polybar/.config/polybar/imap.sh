#!/bin/bash
stat=$(systemctl --user is-active offlineimap)
if [ $stat = "active" ]; then
	echo 
else
	echo 
fi
