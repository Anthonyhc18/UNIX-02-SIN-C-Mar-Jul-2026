#Level 1: Basic command syntax
# This module deals exclusively with the CLI, or command-line interface, rather than the GUI, or graphical user interface, with which you may be more familiar.
#It is used to list the files and directories within the folder you are currently in.
ls
#Level 2: Arguments
#An argument can be used to specify what the command should act upon. If the `ls` command is given the name of a directory as an argument, the result will be a list of the contents of that directory.
#It is used to specifically check if that file exists in your current directory.
Ls script_linux_cisco_1.sh
#It's an "Easter Egg" or hidden joke within the aptitude package manager. Its sole function is to engage in a humorous dialogue with the user that culminates in an ASCII art drawing of a cow.
aptitude moo
#Level 3: Options
#Options can be used to modify the behavior of a command
#It is used to list files and directories in long format, showing technical details that the simple version of the command hides.
ls -l
#It is used to list files and directories in reverse order.
ls -r
#Both commands are essentially the same. In Linux, command parameters can be written separately or combined into a single string after the hyphen.
ls -l -r
ls -rl
#It is a programmed response designed to play with the user who believes that by adding arguments they will find something hidden.
aptitude -v moo
#After several attempts at negation (at the -vv and -vvv levels), the program finally "gives up" and displays a cow in ASCII art.
aptitude -vvv moo
#Level 4:Print the working directory
#The pwd command prints the working directory.
pwd
#Level 5: Change of Directories
#Files are used to store data such as text, graphics, and programs. Directories are a type of file used to store other files; they provide a hierarchical organizational structure.
#It's used to change directories or move between folders on your system. It's how you navigate the file structure from the terminal.
cd Documents 
#It takes you directly to the system root (root directory).
cd /
#It is an instruction for the system to change your current location to a specific folder within the Linux hierarchy.
cd /home/sysadmin
#The command `cd School/Art` is an instruction to change directories to a specific path containing two levels. Executing it instructs the system to move to the `Art` folder, which is located inside the `School` folder.
cd School/Art
#It's one of the most essential commands in Linux and is used to move up one level in the directory structure. Simply put, it means "leaving the current folder and returning to the folder that contains it" (the parent folder).
cd ..
#It's the fastest shortcut in Linux to return to your home directory (also known as Home).
cd ~
#Level 6: File listings
#You are asking for a detailed listing of one of the most important folders in Linux: the directory where the system stores its logs.
ls -l /var/log/
#Performs an advanced, chronological search within the system logs folder.
ls -lt /var/log   
#It is requesting the system for a detailed list of the log files, but with a specific organization based on their weight or size.
ls -l -S /var/log 
#It organizes log files by size, but this time displays them in ascending order: from smallest to largest.
ls -lSr /var/log
#It is requesting a list of the directory of records, but with the alphabetical order reversed.
ls -r /var/log  
#Level 7: Administrative access
#Preventing ordinary users from running these commands helps protect the system.
#`sudo` is one of the most powerful commands in Linux system administration. Its main function is to allow you to switch users, usually to become the superuser or root.
su  -
#It attempts to run a program called "Steam Locomotive" with superuser privileges
sudo sl 
#Level 8: Permissions
#Permissions determine how different users can interact with a file or directory.
#It is used to examine the detailed properties of a specific file.
ls -l hello.sh
#Level 9: Change file permissions
#The chmod command is used to change the permissions of a file or directory. Only the root user or the file owner can change file permissions.
#You are modifying the permissions of that file to make it an executable program for your own user.
chmod u+x hello.sh
#It is the instruction you give to the terminal to start (run) the script you have created
./hello.sh 
