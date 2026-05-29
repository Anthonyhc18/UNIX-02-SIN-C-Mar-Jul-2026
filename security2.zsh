[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # id  It's used to view the group
uid=0(root) gid=0(root) grupos=0(root)

[Anthony-Herrera-UIDE] ~ 💀COJUDO💀 # id -gn only the name of the main group
root

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # touch ~/test_grupo_heredado.txt Create a file and see which group inherits
[Anthony-Herrera-UIDE] ~ 💀COJUDO💀 # ls -la  ~/test_grupo_heredado.txt The group is the user's main group
-rw-r--r-- 1 root root 0 may 29 14:57 /root/test_grupo_heredado.txt

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # echo "Grupo actual: $(id -gn)" View the current group
Grupo actual: root}

#Create a file before newgrp
[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # touch ~/ants_de_newgrp.txt
                                                                                                                                                                                
[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # ls -la ~/ants_de_newgrp.txt
-rw-r--r-- 1 root root 0 may 29 15:05 /root/ants_de_newgrp.txt

sudo apt install net-tools iputils-ping dnsutils #If you're missing typical commands like ifconfig, netstat, ping, or dig, you can find them in these packages:
sudo apt install ubuntu-restricted-extras #If you're using Ubuntu and wanted to install proprietary multimedia codecs and fonts (like Microsoft's), the correct package is:
sudo apt install ubuntu-restricted-extras #The high-efficiency video format is called H.265, but in the Linux world, the encoder for that format is called x265 (with a 6, not a 5). Furthermore, the VLC plugin changed its name in recent versions of Debian/Kali. Let's fix this right away. Run this command, which now uses the exact names that the Kali Linux repositories understand:

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # newgrp desarrolladores The newgrp (New Group) command is a temporary switch for your current terminal.
[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # id
uid=0(root) gid=1000(desarrolladores) grupos=1000(desarrolladores),0(root) 

                                                                                                                                                                                
[Anthony-Herrera-UIDE] ~ 💀COJUDO💀 # which newgrp The `which` command searches your system folders (defined in your $PATH environment variable) to find the exact location of the executable file that runs when you type a command.
/usr/bin/newgrp

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # echo $$ The echo $$ command is used to display the PID (Process ID or Process Identifier) ​​of the terminal (the shell) you are using at this moment.                                                                        
29693