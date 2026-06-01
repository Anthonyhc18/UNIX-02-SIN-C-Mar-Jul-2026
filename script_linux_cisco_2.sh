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

@Anthonyhc18 ➜ ~/Documents $ grep codespace passwd #The command grep codespace passwd successfully matched the user 'codespace' within the passwd file, outputting the corresponding user entry. This confirms that the user is registered in the system's account database.
codespace:x:1000:1000::/home/codespace:/bin/bash

@Anthonyhc18 ➜ ~/Documents $ grep 'root' passwd #"The command grep 'root' passwd searches for the 'root' pattern within the file. Since the root account is the system administrator, the command successfully returns its entry from the database.
root:x:0:0:root:/root:/bin/bash

@Anthonyhc18 ➜ ~/Documents $ grep '^root' /etc/passwd #The grep '^root' /etc/passwd command specifically searches for lines that begin with the string 'root'. The ^ character acts as an anchor for the start of the line, ensuring that only the entry where 'root' is the username is returned.
root:x:0:0:root:/root:/bin/bash


@Anthonyhc18 ➜ ~/Documents $ cat alpha-first.txt #The cat command reads the entire contents of the specified file and outputs it to the standard output (the terminal screen). This is the standard way to inspect the contents of a text file in Linux.
A is for Animal
B is for Bear
C is for Cat
D is for Dog
E is for Elephant
F is for Flower

@Anthonyhc18 ➜ ~/Documents $ grep 'r$' alpha-first.txt #The grep 'r$' command filters the file for lines ending with the letter 'r'. The $ symbol acts as an anchor for the end of the line, ensuring that only lines where 'r' is the final character are returned.
B is for Bear
F is for Flower

@Anthonyhc18 ➜ ~/Documents $ cat red.txt # The cat command outputs the complete contents of red.txt to the terminal, confirming the successful creation of the file with the expected lines.
Red
Reef
Rot
Reeed
Rd
Rod
Roof
Reed
Root
reel

@Anthonyhc18 ➜ ~/Documents $ grep -i 'r..f' red.txt #The grep -i 'r..f' command performs a case-insensitive search for a four-character pattern starting with 'r' and ending with 'f', where the middle two characters can be anything. The . acts as a wildcard for any single character.
Reef
Roof
@Anthonyhc18 ➜ ~/Documents $ grep 'r..d' red.txt #The grep 'r..d' command filters for four-letter words starting with 'r' and ending with 'd'. The two dots (..) are placeholders for any two characters. Adding the -i flag is necessary to include words starting with an uppercase 'R' (like 'Reed').
read

@Anthonyhc18 ➜ ~/Documents $ grep '....' red.txt #The grep '....' command filters the file to return only lines containing at least four consecutive characters. The . acts as a wildcard for any single character, so four dots require a minimum match of four characters in a sequence.
Reef
Reeed
Roof
Reed
Root
reel
read

@Anthonyhc18 ➜ ~/Documents $ grep 'r..t' /etc/passwd #The grep 'r..t' /etc/passwd command searches for any string that starts with 'r', has exactly two characters in between, and ends with 't'. This is a common way to locate entries where the username or shell path fits this specific 4-character structure.
root:x:0:0:root:/root:/bin/bash
@Anthonyhc18 ➜ ~/Documents $ cat profile.txt #The cat command displays the file's content, which serves as a dataset for pattern matching exercises. Using grep with character classes like [0-9] allows you to isolate numerical data from text, a fundamental skill in log analysis and system administration.
Hello my name is Joe.
I am 37 years old.
3121991
My favorite food is avocados.
I have 2 dogs.
123456789101112
@Anthonyhc18 ➜ ~/Documents $ grep '[0-9]' profile.txt #The grep '[0-9]' command uses a character class to match any line containing at least one numerical digit. It scans the file and returns every line where a digit between 0 and 9 is present.
I am 37 years old.
3121991
I have 2 dogs.
123456789101112
@Anthonyhc18 ➜ ~/Documents $ grep '[^0-9]' profile.txt #The grep '[^0-9]' command uses the caret ^ inside square brackets as a negation operator. It instructs grep to match any line that contains at least one character that is not a digit (0-9).
Hello my name is Joe.
I am 37 years old.
My favorite food is avocados.
I have 2 dogs.
@Anthonyhc18 ➜ ~/Documents $ grep '[.]' profile.txt #In regex, the dot . is a wildcard, but placing it inside square brackets [.] escapes it, forcing grep to treat it as a literal character. This is the standard way to find punctuation marks like periods within a text file.
Hello my name is Joe.
I am 37 years old.
My favorite food is avocados.
I have 2 dogs
@Anthonyhc18 ➜ ~/Documents $ cat red.txt
Red
Reef
Rot
Reeed
Rd
Rod
Roof
Reed
Root
reel

@Anthonyhc18 ➜ ~/Documents $ grep -i 're*d' red.txt #The command grep -i 're*d' red.txt searches the file for any word that starts with "r" and ends with "d," allowing for any number of "e" characters in between. The -i flag is essential because it makes the search case-insensitive, ensuring you find both "Red" and "rd" or "reed," regardless of whether they are capitalized.
Red
Reeed
Rd
Reed
@Anthonyhc18 ➜ ~/Documents $ grep 'z*' red.txt #The pattern z* matches 'zero or more' occurrences of the letter 'z'. Since 'zero' occurrences of 'z' exist between every character in a string, grep matches every line in the file. Essentially, z* is a null-match that returns all input.
Red
Reef
Rot
Reeed
Rd
Rod
Roof
Reed
Root
reel
read
@Anthonyhc18 ➜ ~/Documents $ grep 'e*' red.txt #The pattern e* matches 'zero or more' occurrences of 'e'. Because every string contains 'zero' 'e's, the regex engine considers every line a match. This is why grep returns the entire file content, regardless of whether the line actually contains the letter 'e'.
Red
Reef
Rot
Reeed
Rd
Rod
Roof
Reed
Root
reel
read
@Anthonyhc18 ➜ ~/Documents $ grep 'ee*' red.txt #The pattern ee* forces the regex engine to find at least one literal 'e' before the quantifier applies. This effectively changes the logic from 'zero or more' (which matches everything) to 'one or more', allowing you to successfully filter out lines that don't contain the character 'e'.
Red
Reef
Reeed
Reed
reel
read
