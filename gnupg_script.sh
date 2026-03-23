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
#Se usa el hash para cifrar el documento 
gpg --output doc_cifrado.txt --encrypt --recipient  9E04700B2ACCDCDBC4B3794D981D97E977939DE5 doc_no_cifrado.txt
#Cifra el documento 
cat doc_cifrado.txt