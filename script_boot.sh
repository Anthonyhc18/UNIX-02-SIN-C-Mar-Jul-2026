#Alternative route
cd calculadora 
#absolute path
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/Calculadora 
#Create a file from the terminal
touch script_boot.sh
#Create a folder from the terminal
mkdir Proyecto 
#ls -lai, represents L following links, A allows us to see all hidden files being a hard link and I the inode number
ls -lai
#They are the same options but separate
ls -l -a -i
#displays information about the current directory
#Devece displays the driver type, the specific device number; if the main number is "0" it means you are doing it in a virtual machine, if it is "7" it means you are using a physical disk
stat .
  File: .
  Size: 4096            Blocks: 8          IO Block: 4096   directory
Device: 7,7     Inode: 1573125     Links: 2
Access: (0777/drwxrwxrwx)  Uid: ( 1000/codespace)   Gid: ( 1000/codespace)
Access: 2026-04-08 21:08:23.672625654 +0000
Modify: 2026-04-08 21:08:22.477625739 +0000
Change: 2026-04-08 21:08:22.477625739 +0000
Birth: 2026-04-08 21:08:22.477625739 +0000
#Change directory to home directory from any location operative system
cd 
#Change directory to home directory using absolute rute
cd /home/codespace
#Change directory to home directory using ~shortcut
cd ~
#Change directory to home directory using eviroment variable
cd $Home
#Where am I
pwd 
#Who am I
whoami
#when each file was modified
ls -lt
#It is used to view the command manual and how to use it
manual (man)
#ls command manual
man ls 
#dev lists the files, head -5 shows the first 5 devices
ls /dev | head -5
#`dev` lists the files, `tail -5` shows the last 5 devices
ls /etc | tail -5
