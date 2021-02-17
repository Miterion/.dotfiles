#!/bin/zsh

set -eo pipefail

if [ `systemctl is-active dev-yubikey.device` = 'active' ]; then
	echo 
else
	echo %{F#d60606} 
fi
