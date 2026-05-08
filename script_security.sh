[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # id In Linux, the system doesn't actually care about the name "root" or "nobody." It identifies everyone by a number called the User ID (UID)
uid=0(root) gid=0(root) grupos=0(root)

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # groups In Linux, the groups command is my way of seeing which "clubs" my user belongs to. It tells me what permissions I have across the system by showing my Group IDs (GID)
root

[Anthony-Herrera-UIDE] ~ 💀COJUDO💀 # cat /etc/passwd In my Linux journey, running cat /etc/passwd is like opening the master directory of the system. It’s the first place I go to understand how users and service accounts are structured.
root:x:0:0:root:/root:/usr/bin/zsh
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
systemd-network:x:997:997:systemd Network Management:/:/usr/sbin/nologin
debian-tor:x:100:101::/var/lib/tor:/bin/false
tcpdump:x:996:996:tcpdump:/nonexistent:/usr/sbin/nologin

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # touch test.txt Since test.txt didn't exist before, the system did two things: It created a new, empty file named test.txt. It assigned me (root, UID 0) as the owner and my primary group (root, GID 0) as the group owner

[Anthony-Herrera-UIDE] ~ MUYBIEN✓ # ls -la When I run ls -la, I am asking the system for the "Full Disclosure" of the current directory. This is where I can truly see the results of my previous actions—like the touch test.txt command—and verify the security structure of my environment.
total 68
drwxrwxrwx+ 4 root root  4096 may  8 14:40 .
drwxr-xrwx+ 4 root root  4096 may  8 14:36 ..
drwxrwxrwx+ 2 root root  4096 may  8 14:36 .devcontainer
drwxrwxrwx+ 7 root root  4096 may  8 14:38 .git
-rw-rw-rw-  1 root root  4688 may  8 14:36 .gitignore
-rw-rw-rw-  1 root root 34523 may  8 14:36 LICENSE
-rw-rw-rw-  1 root root    53 may  8 14:36 README.md
-rw-rw-rw-  1 root root  1207 may  8 14:40 script_security.sh
-rw-rw-rw-  1 root root     0 may  8 14:40 test.txt