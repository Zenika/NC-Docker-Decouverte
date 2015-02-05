
### Démarrer 50 conteneur et verifier les resouces utilisées
htop
for i in `seq 50`; do sudo docker run -d -p 8080 zenika/nodejs-sample-app:latest; done
htop


Notes :
Clean-up
docker ps -a -q | xargs docker stop
docker ps -a -q |xargs docker rm



### Démarrer 10 VM et vérifier les resources
# Nous avons utlisé l'image debian_wheezy_amd64_standard.qcow2 : 
#         wget http://people.debian.org/~aurel32/qemu/debian_wheezy_amd64_standard.qcow2
# Pour créer un snapshot avec node JS nous avons 
#    * Demarré la VM
#    * Installé node
#    * Lancé l'application
#    * Crée un SNAPSHOT : nodejs_sample_app 
#          --> http://wiki.qemu.org/Documentation/CreateSnapshot

htop

IMAGE=Downloads/debian_wheezy_amd64_standard.qcow2
SNAPSHOT=nodejs_sample_app
QEMU=qemu-system-x86_64
$QEMU -hda $IMAGE -loadvm $SNAPSHOT --redir tcp:5555::8080 -nographic 
$QEMU -hda $IMAGE -loadvm $SNAPSHOT --redir tcp:5556::8080 -nographic
$QEMU -hda $IMAGE -loadvm $SNAPSHOT --redir tcp:5557::8080 -nographic
$QEMU -hda $IMAGE -loadvm $SNAPSHOT --redir tcp:5558::8080 -nographic
$QEMU -hda $IMAGE -loadvm $SNAPSHOT --redir tcp:5559::8080 -nographic

htop
