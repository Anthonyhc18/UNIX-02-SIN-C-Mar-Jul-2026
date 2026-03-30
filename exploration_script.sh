# a command used in Debian-based Linux systems (like Ubuntu and Mint) to refresh the local database of available software packages and their versions from configured repositories
sudo apt update
#command is used in Debian-based Linux distributions (like Ubuntu, Linux Mint, and Kali) to install the latest versions of all packages currently installed on your system
sudo apt upgrate
#installs the GNU Parted utility on Debian-based Linux distributions like Ubuntu, Linux Mint, and Kali Linux
sudo apt install parted 
#Lists disks and partitions, displays their file systems, and adds visual separators to organize information.
sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e "\n--\n"
#To view the first disk partition
parted -l
#to view the second disk partition in order 
lsblk -f
# to view the BIOS system or the operating system
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS"
echo "mi archivo" > test.txt
stat test.txt
  File: test.txt
  Size: 11              Blocks: 8          IO Block: 4096   regular file
Device: 7,4     Inode: 1573083     Links: 1
Access: (0666/-rw-rw-rw-)  Uid: ( 1000/codespace)   Gid: ( 1000/codespace)
Access: 2026-03-30 15:49:22.346218119 +0000
Modify: 2026-03-30 15:49:22.346218119 +0000
Change: 2026-03-30 15:49:22.346218119 +0000
 Birth: 2026-03-30 15:49:22.346218119 +0000