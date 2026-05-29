[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # id  It's used to view the group
uid=0(root) gid=0(root) grupos=0(root)

[Anthony-Herrera-UIDE] ~ 💀COJUDO💀 # id -gn only the name of the main group
root

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # touch ~/test_grupo_heredado.txt Create a file and see which group inherits
[Anthony-Herrera-UIDE] ~ 💀COJUDO💀 # ls -la  ~/test_grupo_heredado.txt The group is the user's main group
-rw-r--r-- 1 root root 0 may 29 14:57 /root/test_grupo_heredado.txt
