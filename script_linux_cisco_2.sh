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