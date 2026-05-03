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
