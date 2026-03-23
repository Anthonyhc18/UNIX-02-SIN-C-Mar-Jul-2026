#Este comando enlista la clave privada 
gpg --list-secret-keys --keyid-format=long
#Exporta la secret key
gpg --armor --export-secret-keys
#Importa la clave de mi compañero
gpg --import Llave_publica_Mateo.asc
#Sale el correo de mi compañero
gpg --list-keys
#Se manda un archivo de mensaje 
echo "Hola">doc_no_cifrado.txt
#Se visualiza el mensaje 
cat doc_no_cifrado.txt
