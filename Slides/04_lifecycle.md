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



## Conteneurs

schema

- run
- start
- stop
- commit
- create
- diff
- exec
- rm
- ps

Un conteneur peut avoir un nom



## Persistence de l'état des conteneurs

- Commandes qui te font persisté l'état et celle qui ne le font pas



## Volumes
