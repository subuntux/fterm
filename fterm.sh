#!/bin/bash

while true; do
	echo -n "root@localhost~# "
	read command

	if [ "$command" = "exit" ]; then 
		echo "logout"
		break
	elif [ "$command" = "fterm-i" ]; then
		eval "bash /usr/share/fterm/src/trigger.sh"
	elif [ "$command" = "fterm manager" ]; then
		eval "bash /usr/share/fterm/src/manager.sh"
	elif [ "$command" = "version" ]; then
		echo "V.1.0"
	elif [ "$command" = "update" ]; then
		echo -n "ppa or wget? "
		read type
		if [ "$type" = "ppa" ]; then
			eval "sudo apt install fterm"
		elif [ "$type" = "wget" ]; then
			eval "wget https://subuntux.github.io/fterm/fterm_*.deb"
			eval "sudo dpkg -i fterm*.deb"
			eval "rm fterm*.deb"
		else 
			echo "Invalid Option"
			break
		fi
	else
		eval $command
	fi
done
