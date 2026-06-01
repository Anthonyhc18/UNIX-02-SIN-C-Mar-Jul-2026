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

@Anthonyhc18 ➜ ~ $ su - #When you run the su - command, the system initiates a full login process for the target user, which in this case defaults to the root user.
Password: 
root ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 $ 

root ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 $ ifconfig  #The ifconfig command is used to display or configure network interfaces on your Linux system
docker0: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
        inet 172.17.0.1  netmask 255.255.0.0  broadcast 172.17.255.255
        ether 02:42:37:d4:38:d6  txqueuelen 0  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.0.0.153  netmask 255.255.0.0  broadcast 10.0.255.255
        inet6 fe80::7e1e:52ff:feee:622b  prefixlen 64  scopeid 0x20<link>
        ether 7c:1e:52:ee:62:2b  txqueuelen 1000  (Ethernet)
        RX packets 5830718  bytes 8260009979 (8.2 GB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 306556  bytes 166971326 (166.9 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 60439  bytes 129487090 (129.4 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 60439  bytes 129487090 (129.4 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

root ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 $ ping -c 4 192.168.1.2 #The command ping -c 4 192.168.1.2 is a standard network diagnostic tool.
PING 192.168.1.2 (192.168.1.2) 56(84) bytes of data.

--- 192.168.1.2 ping statistics ---
4 packets transmitted, 0 received, 100% packet loss, time 3101ms

root ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 $  ping -c 4 192.168.1.3 #The command ping -c 4 192.168.1.3 is like sending four digital letters to a specific address to see if anyone is there to answer. The -c 4 tells your system to send exactly four packets and then stop. If it stays "frozen," it means those letters aren't reaching their destination—either the address doesn't exist, or there is a wall (like a firewall) blocking the path.
PING 192.168.1.3 (192.168.1.3) 56(84) bytes of data.

--- 192.168.1.3 ping statistics ---
4 packets transmitted, 0 received, 100% packet loss, time 3080ms 

@Anthonyhc18 ➜ ~ $ ps #The ps command (short for Process Status) is a fundamental tool in Linux used to display information about the processes currently running on your system. Think of it as a "Task Manager" inside your terminal.
    PID TTY          TIME CMD
   4338 pts/2    00:00:00 bash
  39904 pts/2    00:00:00 ps

@Anthonyhc18 ➜ ~ $ ps -e #The -e flag stands for "every". When you run ps -e, it lists every single process currently running on the system, regardless of which user started them or whether they are connected to a terminal (like your current shell).
    PID TTY          TIME CMD
      1 ?        00:00:00 docker-init
      7 ?        00:00:00 sh
    136 ?        00:00:00 sshd
    264 ?        00:00:00 dockerd
    576 ?        00:00:01 containerd
   1383 ?        00:00:00 sh
   1419 ?        00:00:00 sh
   2216 ?        00:00:00 sh
   2253 ?        00:00:17 node
   3400 ?        00:00:06 node
   4010 ?        00:00:00 sh
   4046 ?        00:00:00 sh
   4338 pts/2    00:00:00 bash
   5269 ?        00:00:00 sh
   5297 ?        00:00:00 sh
   5555 ?        00:00:00 node
   5729 ?        00:00:00 sh
   5762 ?        00:00:00 sh
  26684 ?        00:00:00 sh
  26717 ?        00:00:00 sh
  26993 ?        00:00:00 node
  27006 ?        00:00:31 node
  27182 ?        00:00:00 sh
  27222 ?        00:00:00 sh
  40191 ?        00:00:00 sleep
  40193 pts/2    00:00:00 ps

@Anthonyhc18 ➜ ~ $ ps -ef #The command ps -ef is one of the most common and useful variations of the ps command. Think of it as a "Full Details" view of everything currently running on your system.
UID          PID    PPID  C STIME TTY          TIME CMD
codespa+       1       0  0 May31 ?        00:00:00 /sbin/docker-init -- /bin/sh -c echo Container started trap "exit 0" 15
codespa+       7       1  0 May31 ?        00:00:00 /bin/sh -c echo Container started trap "exit 0" 15 /usr/local/share/ssh
root         136       1  0 May31 ?        00:00:00 sshd: /usr/sbin/sshd [listener] 0 of 10-100 startups
root         264       1  0 May31 ?        00:00:00 dockerd --dns 168.63.129.16
root         576     264  0 May31 ?        00:00:01 containerd --config /var/run/docker/containerd/containerd.toml
codespa+    1383       0  0 May31 ?        00:00:00 /bin/sh
root        1419       0  0 May31 ?        00:00:00 /bin/sh
codespa+    2216       0  0 May31 ?        00:00:00 sh /home/codespace/.vscode-remote/bin/8761a5560cfd65fdd19ce7e2bd18dab5c
codespa+    2253    2216  0 May31 ?        00:00:17 /vscode/bin/linux-x64/8761a5560cfd65fdd19ce7e2bd18dab5c0a4d84e/node /vs
codespa+    3400    2253  0 May31 ?        00:00:06 /vscode/bin/linux-x64/8761a5560cfd65fdd19ce7e2bd18dab5c0a4d84e/node /vs
codespa+    4010       0  0 May31 ?        00:00:00 /bin/sh
root        4046       0  0 May31 ?        00:00:00 /bin/sh
codespa+    4338    3400  0 May31 pts/2    00:00:00 /bin/bash --init-file /vscode/bin/linux-x64/8761a5560cfd65fdd19ce7e2bd1
codespa+    5269       0  0 May31 ?        00:00:00 /bin/sh
root        5297       0  0 May31 ?        00:00:00 /bin/sh
codespa+    5555    2253  0 May31 ?        00:00:00 /vscode/bin/linux-x64/8761a5560cfd65fdd19ce7e2bd18dab5c0a4d84e/node /vs
codespa+    5729       0  0 May31 ?        00:00:00 /bin/sh
root        5762       0  0 May31 ?        00:00:00 /bin/sh
codespa+   26684       0  0 00:31 ?        00:00:00 /bin/sh
root       26717       0  0 00:31 ?        00:00:00 /bin/sh
codespa+   26993    2253  0 00:31 ?        00:00:00 /vscode/bin/linux-x64/8761a5560cfd65fdd19ce7e2bd18dab5c0a4d84e/node /vs
codespa+   27006    2253  2 00:31 ?        00:00:32 /vscode/bin/linux-x64/8761a5560cfd65fdd19ce7e2bd18dab5c0a4d84e/node --d
codespa+   27182       0  0 00:31 ?        00:00:00 /bin/sh
root       27222       0  0 00:31 ?        00:00:00 /bin/sh
codespa+   40436       7  0 00:52 ?        00:00:00 sleep 1
codespa+   40444    4338  0 00:52 pts/2    00:00:00 ps -ef

@Anthonyhc18 ➜ ~ $ sudo apt-get update   #The command sudo apt-get update is the first and most important step in managing software on Debian-based Linux systems (like Ubuntu, which is what your GitHub Codespace likely uses).
Hit:1 http://archive.ubuntu.com/ubuntu noble InRelease
Hit:2 http://security.ubuntu.com/ubuntu noble-security InRelease               
Hit:3 http://archive.ubuntu.com/ubuntu noble-updates InRelease  

@Anthonyhc18 ➜ ~ $ apt-cache search cow #The apt-cache search command is a powerful way to look through the package database on your Linux system. When you run apt-cache search cow, you are asking the system to scan the list of available software packages and return anything that contains the word "cow" in its name or description.
cowbuilder - pbuilder running on cowdancer
cowdancer - Copy-on-write directory tree utility
cowpatty - Brute-force WPA dictionary attack
cowsay - configurable talking cow
cowsay-off - configurable talking cow (offensive cows)
dicoweb - RFC 2229 compliant modular dictionary server (web interface)
erlang-cowboy - Cowboy is a small, fast and modular HTTP server written in Erlang
erlang-cowboy-doc - Documentation files for erlang-cowboy
erlang-cowboy-examples - Examples for erlang-cowboy
erlang-cowlib - Erlang library for manipulating web protocols
fl-cow - copy-on-write utility
golang-github-cowsql-go-cowsql-dev - Go bindings for libcowsql
libb-cow-perl - additional B helpers to check COW status
libcowsql-dev - Embeddable, replicated and fault tolerant SQL engine - development files
libcowsql0 - Embeddable, replicated and fault tolerant SQL engine - shared library
libmoox-struct-perl - simple lightweight record-like structures making sounds like cows
libnet-opensrs-perl - Perl interface for domain registration via the Tucows OpenSRS HTTPS XML API.
libqcow-dev - QEMU Copy-On-Write image format access library -- development files
libqcow-utils - QEMU Copy-On-Write image format access library -- Utilities
libqcow1t64 - QEMU Copy-On-Write image format access library
librust-beef-dev - More compact Cow - Rust source code
librust-clone-file-dev - Clone files and file ranges with little overhead/CoW - Rust source code
librust-derive-into-owned-dev - Custom derives to help with types containing Cow fields - Rust source code
librust-maybe-owned-dev - Provides a `MaybeOwned` (and `MaybeOwnedMut`) type similar to std's `Cow` but it implements `From<T>` and `From<&'a T>` and does not require `ToOwned` - Rust source code
netrek-client-cow - client for netrek online game
python3-libqcow - QEMU Copy-On-Write image format access library -- Python 3 bindings
r-cran-cowplot - GNU R streamlined plot theme and plot annotations for 'ggplot2'
ruby-nakayoshi-fork - solves CoW friendly problem on MRI 2.2 and later
scowl - Spell-Checker Oriented Word Lists
xcowsay - Graphical configurable talking cow
go-cowsql - Pure-Go cowsql client

@Anthonyhc18 ➜ ~ $ sudo apt-get install cowsay #The sudo apt-get install cowsay command tells your system to download and install the "cowsay" program, which generates ASCII art of a cow that "speaks" your chosen text. By using sudo, you grant the system the necessary administrative permissions to install the software correctly. Once the process finishes, you can simply type cowsay "your message" in your terminal to see the character appear. This is a great, simple way to verify that your package manager is working and that you have the correct permissions to add new tools to your environment.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libtext-charwidth-perl
Suggested packages:
  filters cowsay-off
The following NEW packages will be installed:
  cowsay libtext-charwidth-perl
0 upgraded, 2 newly installed, 0 to remove and 99 not upgraded.
Need to get 27.9 kB of archives.
After this operation, 135 kB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://archive.ubuntu.com/ubuntu noble/main amd64 libtext-charwidth-perl amd64 0.04-11build3 [9358 B]
Get:2 http://archive.ubuntu.com/ubuntu noble/universe amd64 cowsay all 3.03+dfsg2-8 [18.6 kB]
Fetched 27.9 kB in 0s (468 kB/s)  
debconf: unable to initialize frontend: Dialog
debconf: (Dialog frontend requires a screen at least 13 lines tall and 31 columns wide.)
debconf: falling back to frontend: Readline
Selecting previously unselected package libtext-charwidth-perl:amd64.
(Reading database ... 58639 files and directories currently installed.)
Preparing to unpack .../libtext-charwidth-perl_0.04-11build3_amd64.deb ...
Unpacking libtext-charwidth-perl:amd64 (0.04-11build3) ...
Selecting previously unselected package cowsay.
Preparing to unpack .../cowsay_3.03+dfsg2-8_all.deb ...
Unpacking cowsay (3.03+dfsg2-8) ...
Setting up libtext-charwidth-perl:amd64 (0.04-11build3) ...
Setting up cowsay (3.03+dfsg2-8) ...
Processing triggers for man-db (2.12.0-4build2) ...

@Anthonyhc18 ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (linux_cisco_2) $ /usr/games/cowsay 'NDG Linux Unhatched' #Using the full path /usr/games/cowsay 'NDG Linux Unhatched' tells your computer: "Go directly to the folder /usr/games/, run the file named cowsay, and pass the message 'NDG Linux Unhatched' to it.
 _____________________
< NDG Linux Unhatched >
 ---------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

@Anthonyhc18 ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (linux_cisco_2) $ sudo apt-get purge cowsay #The `sudo apt-get purge cowsay` command removes the cowsay program from your system along with all its associated configuration files, ensuring a complete cleanup rather than just uninstalling the package. Using `purge` guarantees that no residual traces of the software remain in your Linux environment, which is useful when you want to completely remove a tool or troubleshoot dependency issues.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Package 'cowsay' is not installed, so not removed
0 upgraded, 0 newly installed, 0 to remove and 23 not upgraded.

@Anthonyhc18 ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (linux_cisco_2) $ sudo passwd -S sysadmin #If you run sudo passwd -S sysadmin and it still fails or doesn't return the information you expect, it is likely because the user account is either currently locked or the system's security configuration (PAM) is preventing you from auditing the shadow file directly
sysadmin P 2026-06-01 0 99999 7 -1

@Anthonyhc18 ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 (linux_cisco_2) $ su root #If you execute sudo su and then attempt commands like passwd and still receive the Authentication token manipulation error, it confirms that the environment restricts modifications to /etc/shadow due to security configurations in the container.
Password: 
👋 Welcome to Codespaces! You are on our default image. 
   - It includes runtimes and tools for Python, Node.js, Docker, and more. See the full list here: https://aka.ms/ghcs-default-image
   - Want to use a custom image instead? Learn more here: https://aka.ms/configure-codespace

🔍 To explore VS Code to its fullest, search using the Command Palette (Cmd/Ctrl + Shift + P or F1).

📝 Edit away, run your app as usual, and we'll automatically make it available for you to access.

@Anthonyhc18 ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 $ 

@Anthonyhc18 ➜ /workspaces/UNIX-02-SIN-C-Mar-Jul-2026 $ passwd sysadmin #We changed to a new password.
New password: 
Retype new password: 
passwd: password updated successfully

@Anthonyhc18 ➜ ~/Documents $ cat ~/Documents/food.txt #The command cat ~/Documents/food.txt is used to display the entire content of a file on your screen.
Food is good.
@Anthonyhc18 ➜ ~/Documents $ cat food.txt > newfile1.txt #The command `cat food.txt > newfile1.txt` reads the contents of `food.txt` and writes them to `newfile1.txt`, creating the file if it doesn't exist or replacing its contents if it already exists. Essentially, it works like a "copy and paste" operation, copying text from one file to another, but sending the output to the new file instead of displaying it on the screen.

@Anthonyhc18 ➜ ~/Documents $ cat newfile1.txt  #The cat utility (short for concatenate) reads the entire file from start to finish and outputs the text line-by-line to your screen. If the file exists, you will see its content (e.g., "Food is good."); if the file does not exist, the terminal will return an error message stating "No such file or directory."
Food is good.

@Anthonyhc18 ➜ ~/Documents $ echo "Hello" # When you run echo "Hello", the shell simply takes the string "Hello" and prints it back to your terminal output. It is primarily used in scripts to show status messages, debug code, or output data.
Hello
#This command will overwrite the content of newfile1.txt with the text "I like food."
@Anthonyhc18 ➜ ~/Documents $ cat newfile1.txt
Food is good.
@Anthonyhc18 ➜ ~/Documents $ echo "I like food." > newfile1.txt
@Anthonyhc18 ➜ ~/Documents $ cat newfile1.txt
I like food.

@Anthonyhc18 ➜ ~/Documents $ echo "This food is good." >> newfile1.txt #Notice that the STDOUT output of the echo command has replaced the original file contents. This is because the > character overwrites any existing file contents. To append content to a file, instead of overwriting, use the greater-than symbol twice.
@Anthonyhc18 ➜ ~/Documents $  cat newfile1.txt
I like food.
This food is good.

@Anthonyhc18 ➜ ~/Documents $ vi newfile.txt #You have successfully opened newfile.txt in the vi editor. You are currently in command mode, where you can navigate the file using keys like h, j, k, and l, or enter insert mode by pressing i to start typing text. Remember to press Esc to return to command mode whenever you need to perform actions or access ex mode by typing : to save or quit the file.
@Anthonyhc18 ➜ ~/Documents $ 

#How to Advance Further
We hope you enjoyed this brief introduction to the world of Linux. The content of this course aligns with the Linux knowledge covered by the LPI Linux Essentials exam objectives. But there's much more! Advance your career by gaining more Linux knowledge with a certification.
