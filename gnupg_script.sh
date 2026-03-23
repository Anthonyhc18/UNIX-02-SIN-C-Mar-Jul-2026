#Este comando enlista la clave privada 
gpg --list-secret-keys --keyid-format=long
#Exporta la secret key
gpg --armor --export-secret-keys
