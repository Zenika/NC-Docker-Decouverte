# Démarrer un conteneur Docker à partir 
# de l'image debian:jessie en ouvrant un 
# shell bash en mode interactir
sudo docker run -i -t --rm debian:jessie bash

# Démarrer un conteneur Docker à partir 
# de l'image **zenika/nodejs-sample-app:latest** 
# en mode detached pour démarrer un serveur nodejs
docker run -d -p 80:8080 zenika/nodejs-sample-app:latest


# Quelques alias utiles
alias docker-tail-last="docker ps -ql | xargs docker logs -f"
alias docker-stop-last="docker ps -ql | xargs docker stop"
alias docker-stop-all="docker ps -q | xargs docker stop"
alias docker-rm-all="docker ps -qa | xargs docker rm"

# 
while true; do echo 'docker@zenika'; sleep 1; done


