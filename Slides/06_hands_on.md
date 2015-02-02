## Hands-on #1

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



## Hands-on #2


Notes :
- Mise en place de pattern simples (préparer dockerfiles)
    - build : qqch à builder
    - env dev : appli (apache, tomcat, bdd) => ça tourne
    - Tests : env dev mais version différentes (plantage si mauvaise version)
    - packaging pull => appli cli (ncurse) [client chat]
    - outils deploy
