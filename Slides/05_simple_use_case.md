## Build isoler (build container) [dev]

- Language stack
    - Build tools inside images
- "Separation of context"
    - Jenkins & slaves ont just besoin de Docker
    - Dev & Intégration continue *build* sur les même images
- Les developpeurs ont "la main" sur le *build*

Notes :
- Language stack
- Jenkins/CI



## Setup de l'environnement de développement (dev tools) [dev]

- Isoler les services externes du SI sur les machines de Dev'
- Mutualiser et distribuer les configurations de ces services
- Passage d'un projet à l'autre simplifié
- Intégration continue \o/

(schema?)

Notes :
- External services (ActiveMQ, ..), pas besoin de les installer sur le
  poste de dev.




## Tests in a different environment [dev,ops]

- Que faire si je veux.. :
    - .. vérifier que mon application tourne sous Ruby 2.1.5
        - ``docker […] run ruby:2.1.5 […]``
    - .. vérifier que mon application compile sous Java 6
    - .. vérifier que mon application est compatible avec MySQL 5.6
    - .. vérifier que mon application est *scalable*
    - .. tester gitlab, kanboard, une appli node.js ``xD``




## Outils pour le déploiement [ops]





## The Universal Package Format

- Remplacer ``apt-get``, ``yum``, ``pacman``, … par
    - ``docker run […]``
- Installation pattern
    - nsenter

Notes :
- Détailler le installaiton pattern


