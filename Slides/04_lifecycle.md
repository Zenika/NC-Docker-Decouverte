## Cycle de vie

- Images (*Construction*)
    - Template
    - Lecture seule
- Registry (*Distribution*)
    - Liste d'images
- Conteneurs (**Runtime**) :
    - Basé sur une image
    - Dispose d'un état

Notes :
- 
- Tous est HASH (comme git)



## Images & Dockerfile

schema

- images
- rmi
- search
- build



## Dockerfile

```dockerfile
MAINTAINER John Doe <john@doe.com>
FROM ubuntu:14.04
COMMAND ... # << output/hash
```

Notes :
- Explain each line of a Dockerfile example



## Conteneurs (1/2)

schema


Notes :
- Run d'un conteneur :
    - Vérifie la présence de l'image, et la télécharge si besoins
    - Créer un conteneur à base de l'image, alloue un système de
    fichier de l'image en read-only et un layer en écriture
    - Configure/ alloue in interface "network" (bridge, ..), setup
      l'adresse IP (dispo dans pool)
    - Exécute le processus demandé et capture les outputs (stdout,
      stderr, ..)
- Un conteneur est nommé (de manière automatique ou manuelle)



## Conteneurs (2/2)

- run : 
- start :
- stop :
- commit :
- create :
- diff :
- exec :
- rm :
- ps :




## Persistence de l'état des conteneurs

- Commandes qui te font persisté l'état et celle qui ne le font pas



## Volumes
