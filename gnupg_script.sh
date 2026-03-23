#Este comando enlista la clave privada 
gpg --list-secret-keys --keyid-format=long
#Exporta la secret key
gpg --armor --export-secret-keys
#Importa la clave de mi compañero
gpg --import Llave_publica_Mateo.asc