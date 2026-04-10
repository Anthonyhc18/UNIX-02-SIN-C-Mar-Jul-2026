#These packages are used to compile code (gcc, make), configure menus (ncurses), and package the system (cpio, dosfstools).
sudo apt update && sudo apt install -y git vim make gcc libncurses-dev flex bison bc \
cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86
#Download the source code
git clone --depth 1 https://github.com/torvalds/linux.git
cd linux
#Configure the Kernel
make menuconfig
#It is used to verify if the kernel was configured time 5-10 min
make -j$(nproc)