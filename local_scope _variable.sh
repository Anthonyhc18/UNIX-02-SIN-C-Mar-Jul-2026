#!/bin/bash
PUBLISHER="No Starch Press"
print_name(){
local name
name="Black Hat Bash"
echo "${name} by ${PUBLISHER}"
}
print_name
echo "Variable ${name} will not be printed because it is a local variable.

#Differences between global and local variables?
#Global varriables: Global variables are those that can be used from anywhere in the script or program, making them useful for sharing information between different functions.
#Local variables: In Bash, a local variable is declared with the local keyword inside a function.
#Particularidades?
#Bash can be started in several ways, each determining its behavior. If invoked as an interactive shell, it allows the user to enter commands directly; if invoked as a non-interactive shell, it executes a script and then exits. Additionally, it can be a login shell, which loads configuration files such as .bash_profile or .profile, or a non-login shell, which typically loads .bashrc.