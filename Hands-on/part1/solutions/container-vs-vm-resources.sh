#!/bin/bash

### Démarrer 50 conteneur et verifier les resouces utilisées
htop
for i in `seq 50`; do sudo docker run -d -p 8080 zenika/nodejs-sample-app:latest; done
htop


### Démarrer 10 VM et vérifier les resources
# Nous avons utlisé l'image debian_wheezy_amd64_standard.qcow2 : 
#         wget http://people.debian.org/~aurel32/qemu/amd64/debian_wheezy_amd64_standard.qcow2
# Pour créer un snapshot avec node.js 
#    * Demarrer la VM
#		qemu-system-x86_64 -hda debian_squeeze_amd64_standard.qcow2
#    * Installer node et lancer l'application
#    * Créer un SNAPSHOT : nodejs_sample_app.qcow2
#          --> http://wiki.qemu.org/Documentation/CreateSnapshot
#			qemu-img create -f qcow2 -b debian_wheezy_amd64_standard.qcow2 nodejs_sample_app.qcow2 
#    * Créer un tag nodejs_sample_app
#			--> http://en.wikibooks.org/wiki/QEMU/Monitor#savevm 
#			Acceder à la console QEMU (CTRL+ALT+2) 
#			savevm nodejs_sample_app

htop

IMAGE=Hands-on/part1/solutions/nodejs_sample_app.qcow2
SNAPSHOT=nodejs_sample_app
QEMU=qemu-system-x86_64
gnome-terminal -e "$QEMU -hda $IMAGE -loadvm $SNAPSHOT --redir tcp:5555::8080 -nographic"
gnome-terminal -e "$QEMU -hda $IMAGE -loadvm $SNAPSHOT --redir tcp:5556::8080 -nographic"
gnome-terminal -e "$QEMU -hda $IMAGE -loadvm $SNAPSHOT --redir tcp:5557::8080 -nographic"
gnome-terminal -e "$QEMU -hda $IMAGE -loadvm $SNAPSHOT --redir tcp:5558::8080 -nographic"
gnome-terminal -e "$QEMU -hda $IMAGE -loadvm $SNAPSHOT --redir tcp:5559::8080 -nographic"
gnome-terminal -e "$QEMU -hda $IMAGE -loadvm $SNAPSHOT --redir tcp:5560::8080 -nographic"
gnome-terminal -e "$QEMU -hda $IMAGE -loadvm $SNAPSHOT --redir tcp:5561::8080 -nographic"
gnome-terminal -e "$QEMU -hda $IMAGE -loadvm $SNAPSHOT --redir tcp:5562::8080 -nographic"

htop
