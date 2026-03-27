#Change directory to dev directory
#CD C: SDA D: SDB
cd /dev
#list archives and directories 
ls
#change directory to proc directory
cd /proc
#list process on proc directory
ls 
#Show cpu informations
cat cpuinfo
#PrintWorkingDirectory 
pwd 
#Permite ver el id 
ls -i
#para crear un archivo con un mensaje 
echo "Hola" > test.txt
#para visualizar el mensaje 
cat test.txt
#muestra el estado de como se guarda un archivo 
stat  test.txt