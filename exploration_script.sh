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