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
