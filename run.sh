#!/bin/bash

if ([ $# -eq 1 ] && ([ $1 == "local" ] || [ $1 == "remote" ])) ; then

	sudo apt update
	sudo apt -y install ansible

	if [[ "$1" -eq "local" ]] ; then
		ansible-playbook site.yaml --connection=local -i local_only_inventory.yaml -e ansible_python_interpreter=/usr/bin/python3
	elif [[ "$2" -eq "remote" ]] ; then
		ansible-playbook site.yaml -i standard_inventory.yaml -e ansible_python_interpreter=/usr/bin/python3
	fi

else
	cat <<- DOCOPT
	Usage:
	  $0 local
	  $0 remote
	DOCOPT
fi
