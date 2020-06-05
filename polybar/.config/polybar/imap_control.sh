#! /bin/bash
stat=$(systemctl --user is-active offlineimap)
if [ $stat = "active" ]; then
	`systemctl --user stop offlineimap`
else
	`systemctl --user start offlineimap`
fi
