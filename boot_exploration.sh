#It allows you to view the files, but it's a shortcut.
ls -a
#It allows you to view the files, but it's a way to avoid shortcuts.
ls --all
#It is used to view files in lists, whether secret or not; the H reduces the size of the files.
ls -l -a -h
##It is used to view files in lists, whether secret or not
ls -l -ah 
#It is used to view files in lists, whether secret or not
ls -lah 
#It's used to create a folder; you put a double -- because it's an option, not a command.
mkdir -- -rf
#Delete a folder named -rf, as it is used to delete empty directories.
rmdir -- -rf
#Quick help for the ls command directly in the terminal.
ls --help
#It is used to view a manual of the file list
man ls
#We accessed the depth using the command `man git-clone`, pressing the / to search, we searched for `depth` and with `n` to go forward and `N` to go backward we searched for the following:
--depth <depth>
           Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless --no-single-branch is given to fetch the histories near the tips of all branches. If you want to clone submodules shallowly, also
           pass --shallow-submodules.
#r--- permissions for others, read-only
#r-x permissions for the group, read and execute only
#rwx permissions for the user, read, write, execute
#- file type, normal (does not allow execution)
-rw-rw-rw
#command to change permissions
chmod +x script.sh
# to grant permission only to users
chmod u+x script.sh 
#Remove reading from other
chmod o-r secreto.txt
#The owner reads/writes; no one else can do anything by removing all permissions.
chmod u+rw,go-rwx privado 
#When a problem is specific, AI won't help you because it sometimes doesn't provide what you specifically need. That's why it's better to use people's experience, because we're not the only ones with the problem.
# We create a directory with a file 1
touch archivo1
mkdir directorio1
#Install the ACL (Access Control List) package on Linux.
sudo apt-get install acl
#Change the owner of files and folders
sudo chown -R $(whoami) .
#Removes ACL permissions from files and folders in the current directory and everything inside it.
sudo setfacl -bnR .
#Define the permissions that are REMOVED when you create files or folders.
umask 027
#It makes it so that new files and folders can ONLY be used by their owner.
umask 077
#It displays the user you are currently logged in as.
whoami
#Write the text "Hello" inside a file called my_file.
echo "Hola" >mi_archivo
#Create a new user named luna with specific settings.
useradd -m -s /usr/bin/zsh luna
#Create a new user named luna, with their own home folder and using zsh as the shell, with administrator privileges.
sudo useradd -m -s /usr/bin/zsh luna
#Change the owner of the file my_file to the user luna.
sudo chown luna mi_archivo