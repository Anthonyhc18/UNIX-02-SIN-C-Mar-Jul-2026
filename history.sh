 1  git checkout main
    2  cd UNIX-02-SIN-C-Mar-Jul-2026
    3  git remote add upstream https://github.com/jonathanetitoo/UNIX-02-SIN-C-Mar-Jul-2026.git
    4  git fetch upstream
    5  git checkout upstream/eval_p2_1_g1 -- evaluation/
    6  git add evaluation/
    7  git commit -m "Copiando carpeta evaluation desde el repo original"
    8  git push origin main
    9  git fetch upstream
   10  git checkout -b eval_p2_1_g1 upstream/eval_p2_1_g1
   11  git push origin eval_p2_1_g1
   12  cd evaluation/orion
   13  mv notas apuntes
   14  mkdir respaldos
   15  git add .
   16  git commit -m "Fix problema 1: estructura de directorios corregida"
   17  git push origin main
   18  mv notas apuntes
   19  cd evaluation/orion
   20  mv notas apuntes
   21  ls
   22  git add .
   23  git commit -m "Fix problema 1: estructura de directorios corregida"
   24  git push origin eval_p2_1_g1
   25  mv telemetria.log apuntes/
   26  mv config.tmp config.conf
   27  ls
   28  ls apuntes/
   29  git add .
   30  git commit -m "Fix problema 2: archivos movidos y renombrados"
   31  git push origin eval_p2_1_g1
   32  git status
   33  git push origin eval_p2_1_g1
   34  git status
   35  git push -u origin eval_p2_1_g1
   36  git status
   37  chmod 640 apuntes/telemetria.log
   38  ls -l apuntes/telemetria.log
   39  git add .
   40  git commit -m "Fix problema 3: permisos numericos 640 en telemetria.log"
   41  git push origin eval_p2_1_g1
   42  git status
   43  chmod u+x script.sh
   44  chmod o-w config.conf
   45  ls -l script.sh config.conf
   46  git add .
   47  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   48  git push origin eval_p2_1_g1
   49  git status
   50  chmod u+s script.sh
   51  ls -l script.sh
   52  git add .
   53  git commit -m "Fix problema 5: SUID activado en script.sh"
   54  git push origin eval_p2_1_g1
   55  git status
   56  chmod +t /tmp/orion_zone
   57  mkdir -p /tmp/orion_zone
   58  chmod +t /tmp/orion_zone
   59  ls -ld /tmp/orion_zone
   60  git add .
   61  git commit -m "Fix problema 6: sticky bit en /tmp/orion_zone"
   62  git push origin eval_p2_1_g1
   63  git status
   64  gpg --batch --passphrase "" --quick-generate-key "lyra <lyra@orion.lab>" default default never
   65  gpg --encrypt --recipient lyra@orion.lab --trust-model always --output apuntes/telemetria.log.gpg apuntes/telemetria.log
   66  ls -l apuntes/telemetria.log.gpg
   67  git add .
   68  git commit -m "Fix problema 7: llave GPG generada y telemetria.log cifrado"
   69  git push origin eval_p2_1_g1
   70  gpg --clearsign --local-user lyra@orion.lab --output config.conf.asc config.conf
   71  gpg --verify script.sh.sig script.sh
   72  gpg --detach-sign --local-user lyra@orion.lab --output script.sh.sig --overwrite script.sh
   73  rm script.sh.sig
   74  gpg --local-user lyra@orion.lab --detach-sign --output script.sh.sig script.sh
   75  gpg --verify script.sh.sig script.sh
   76  git add .
   77  git commit -m "Fix problema 8: firmas GPG corregidas y creadas"
   78  git push origin eval_p2_1_g1
   79  git status
   80  history