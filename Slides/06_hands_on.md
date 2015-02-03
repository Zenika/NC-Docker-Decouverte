## Hands-on #1 : Dockerfile

- Construire une image Docker (et compléter ce qui manque)
- Démarrer des conteneurs à partir de l'image fraichement créée
- ``run`` options
    - ``-v`` (``--volume``) : monter un dossier du host dans le
      conteneur
    - ``-p`` (``--publish``) : publier un port sur l'interface du host
      (``hostPort:containerPort`` ou ``ip:hostPort:containerPort``)
    - ``--name`` : associer un nom au conteneur


Notes :
- Build/images/run/ps/modif/stop/start/run/exec/rm/rmi a partir d'un dockefile
- Elasticsearch in docker (by hands)
    - 2 installations différentes pour voir le mécanisme de cache
    - Mettre des TODO pour qu'ils remplissent



## Hands-on #2 : Patterns

- Builder : Builder votre projet favoris avec Docker (donner des
  exemples : maven, scala, clojure, haskell) (se baser sur jdk7)
- Tester l'image builder avec jdk6, jdk8
- Tester des softwares pré-packager (gitlab, ..)
- Installation pattern (pandoc with haskell ?)
- Tips : l'option ``--rm`` (supprime automatiquement le conteneur s'il
  existe) peut être utile


Notes :
- Mise en place de pattern simples (préparer dockerfiles)
    - build : qqch à builder
    - env dev : appli (apache, tomcat, bdd) => ça tourne
    - Tests : env dev mais version différentes (plantage si mauvaise version)
    - packaging pull => appli cli (ncurse) [client chat]
    - outils deploy
