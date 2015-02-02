### Hands-on - Contenu

- La commande docker run
- 50 conteneurs et une VM
- Insécurité des conteneurs



### Docker run

<!-- .element class="fragment" data-fragment-index="2" -->



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



### Une image - 50 conteneurs 
Démarrer 50 conteneur et verifier les resouces utilisées
    + htop
    + for i in `seq 50`; do sudo docker run -d -p 8080 zenika/nodejs-sample-app:latest; done
    + htop


Notes :
Clean-up
docker ps -a -q | xargs docker stop
docker ps -a -q |xargs docker rm

- Comparaison:
    - (nous) run 5 VM avec appli => stats
    - (eux) run X VM jusqu'à avoir les mêmes stats que nous
- Script à lancer (nous & eux) => chez qui ça tourne encore

-- Si soucis réseau => private registry
