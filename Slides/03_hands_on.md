# Hands-on n.1



## Hands-on - Contenu

- La commande docker run
- 50 conteneurs et une VM
- Insécurité des conteneurs



### Docker run

En mode *foreground*
```bash
sudo docker run -i -t --rm debian:jessie bash
```

En mode *detached*
```bash
docker run -d -p 80:8080 zenika/nodejs-sample-app:latest
```


Notes :
while true; do echo 'docker@zenika'; sleep 1; done
sudo docker -d debian/jessie bash -c "while true; do echo 'docker@zenika'; sleep 1; done
docker ps -ql | xargs docker logs -f
docker ps -ql | xargs docker stop
docker ps -ql | xargs docker rm



### Une image, 50 conteneurs 
Démarrer 50 conteneur et verifier les resouces utilisées
    + htop
    + for i in `seq 50`; do sudo docker run -d -p 8080 zenika/nodejs-sample-app:latest; done
    + htop


Notes :
Clean-up
docker ps -a -q | xargs docker stop
docker ps -a -q |xargs docker rm



### Comparaison avec une VM - utilisation des resources

```bash
image=Downloads/debian_wheezy_amd64_standard.qcow2
snapshot=nodejs_sample_app
qemu-system-x86_64 -hda $image -loadvm $snapshot --redir tcp:5555::8080 -nographic 
qemu-system-x86_64 -hda $image -loadvm $snapshot --redir tcp:5556::8080 -nographic
qemu-system-x86_64 -hda $image -loadvm $snapshot --redir tcp:5557::8080 -nographic
qemu-system-x86_64 -hda $image -loadvm $snapshot --redir tcp:5558::8080 -nographic
qemu-system-x86_64 -hda $image -loadvm $snapshot --redir tcp:5559::8080 -nographic
```

Notes :
J'ai pris l'image debian_wheezy_amd64_standard.qcow2 ici: http://people.debian.org/~aurel32/qemu
J'ai demarré la VM, installé node et lancé l'application
J'ai crée un snapshot que j'ai appelé nodejs_sample_app http://wiki.qemu.org/Documentation/CreateSnapshot



### Comparaison avec une VM - Isolation

```bash
# Get the number of node.js processes
ps -ef | grep "node /src/index.js" | awk '{print $2}' | wc -l
# Kill node.js processes
ps -ef | grep "node /src/index.js" | awk '{print $2}' | xargs sudo kill
```
