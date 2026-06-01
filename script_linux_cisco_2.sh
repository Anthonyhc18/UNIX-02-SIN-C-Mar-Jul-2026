cd ~ #Navigates to the user's home directory. It ensures the terminal session starts from the base environment, providing a clean workspace for file management
@Anthonyhc18 ➜ ~ $ dd if=/dev/zero of=/tmp/swapex bs=1M count=50 #Creates a 50MB file named 'swapex' in the /tmp directory filled with zeros. It allocates a specific block size (1M) and repeats the operation 50 times to reserve disk space.
50+0 records in
50+0 records out
52428800 bytes (52 MB, 50 MiB) copied, 0.0488169 s, 1.1 GB/s  #Creates a 50MB file named 'swapex' in the /tmp directory filled with zeros. It allocates a specific block size (1M) and repeats the operation 50 times to reserve disk space.

mv people.csv Work #This command moves the file named 'people.csv' into the directory named 'Work'. It renames the file's path from the current directory to the destination folder while keeping the filename unchanged.

@Anthonyhc18 ➜ ~/Documents $ ls Work #The ls Work command lists the contents of the 'Work' directory. It is used to verify that the file move operation was successful and that 'people.csv' is now present in the destination folder
people.csv

@Anthonyhc18 ➜ ~/Documents $ mv numbers.txt letters.txt alpha.txt School # This command moves three specific files—numbers.txt, letters.txt, and alpha.txt—into the directory named School. It relocates the files from their current location to the target folder, keeping their original names intact.

@Anthonyhc18 ➜ ~/Documents $ ls School  #This command moves multiple source files (numbers.txt, letters.txt, and alpha.txt) into the destination directory (School). It effectively organizes these files by relocating them from the current directory into the specified folder.
alpha.txt  letters.txt  numbers.txt

@Anthonyhc18 ➜ ~/Documents $ mv animals.txt zoo.txt # the mv command is used to rename a file. By providing an existing filename as the source and a new filename as the destination, the command renames the file within the same directory instead of moving it to a different path.

@Anthonyhc18 ➜ ~/Documents $ rm linux.txt #The rm command is used to remove files or directories. Executing rm linux.txt deletes the specified file from the filesystem. Since Linux does not use a 'Trash' or 'Recycle Bin' for command-line operations, this action is permanent.

@Anthonyhc18 ➜ ~/Documents $ ls linux.txt #The ls linux.txt command is used to verify the existence of a specific file. If the file is present in the current directory, the system lists it; otherwise, it returns an error indicating the file cannot be accessed
ls: cannot access 'linux.txt': No such file or directory
#The `rm` command will ignore directories you tell it to delete. To delete a directory, use a recursive option, such as the `-r` or `-R` options. Be careful, as these options are recursive and will delete all files and all subdirectories.
@Anthonyhc18 ➜ ~/Documents $ rm Work
rm: cannot remove 'Work': Is a directory
@Anthonyhc18 ➜ ~/Documents $ rm -r Work
@Anthonyhc18 ➜ ~/Documents $ 
@Anthonyhc18 ➜ ~/Documents $ ls Work 
ls: cannot access 'Work': No such file or directory

@Anthonyhc18 ➜ ~/Documents $ cp /etc/passwd . #The command cp /etc/passwd . copies the system file /etc/passwd to the current working directory. The dot (.) is a shorthand for the current directory. This allows the user to inspect the file's structure—which contains user account information—without risking modifications to the original system file.
@Anthonyhc18 ➜ ~/Documents $ grep sysadmin passwd  #The grep command searches for the pattern 'sysadmin' within the specified file passwd. If the pattern is found, the command outputs the entire line containing it; if no match is found, it returns no output, indicating the string does not exist in the file
@Anthonyhc18 ➜ ~/Documents $ grep "sysadmin" passwd
@Anthonyhc18 ➜ ~/Documents $ cat passwd
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
_apt:x:42:65534::/nonexistent:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
systemd-network:x:998:998:systemd Network Management:/:/usr/sbin/nologin
messagebus:x:100:101::/nonexistent:/usr/sbin/nologin
polkitd:x:997:997:User for polkitd:/:/usr/sbin/nologin
codespace:x:1000:1000::/home/codespace:/bin/bash
sshd:x:101:65534::/run/sshd:/usr/sbin/nologin
@Anthonyhc18 ➜ ~/Documents $ 

