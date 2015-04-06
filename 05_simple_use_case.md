# Pattern d'utilisation simples

![](ressources/images/image-utile.png)



## Isoler vos build

- Language stack & image de build
    - Build tools inside images
- "Separation of concern"
    - Jenkins & slaves ont juste besoin de Docker
    - Dev & Intégration continue se base sur les même images pour le *build*
- Les developpeurs ont "la main" sur le *build*

Notes :
- build container
- Language stack
- Jenkins/CI



## Setup de l'environnement de développement

- Isoler les services externes du SI sur les machines de developement
    - Pas besoin de les installer manuellement
- Mutualiser et distribuer les configurations de ces services
    - Fournit en amont
    - Les mêmes pour tous
- Passage d'un projet à l'autre simplifié
    - ``docker stop``, ``docker run``
- Intégration continue \o/

Notes :
- External services (ActiveMQ, ..), pas besoin de les installer sur le
  poste de dev.




## Tests in a different environment

- Que faire si je veux.. :
    - .. vérifier que mon application tourne sous Ruby 2.1.5
        - ``docker […] run ruby:2.1.5 […]``
    - .. vérifier que mon application compile sous Java 6
    - .. vérifier que mon application est compatible avec MySQL 5.6
    - .. vérifier que mon application est *scalable*
    - .. tester gitlab, kanboard, une appli node.js ``xD``



## The Universal Package Format

- Remplacer ``apt-get``, ``yum``, ``pacman``, … par
    - ``docker run […]``
- Installation pattern
    - nsenter

Notes :
- Détailler le installaiton pattern


