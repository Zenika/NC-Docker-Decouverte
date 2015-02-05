# Hands-on n.2

![](ressources/images/hands-on-2.png)



## Hands-on #1 : Dockerfile

![](ressources/images/docker-elasticsearch.png)

- Construire une image Docker d'Elasticsearch en complétant ce qui manque
- Démarrer plusieurs conteneurs à partir de l'image fraichement créée
- Voir le résultat dans votre navigateur (grâce au plugin head)




## Hands-on #1 : Dockerfile Tips

- Démarrer elasticsearch ``bin/elasticsearch``
- ``run`` options
    - ``-v`` (``--volume``) : monter un dossier du host dans le
      conteneur (``hostFolder:containerFolder``)
    - ``-p`` (``--publish``) : publier un port sur l'interface du host
      (``hostPort:containerPort``)
- Plusieurs images : binder des ports différents sur le host (9200,
  9201, 9202, ..)
- Voir les nœuds elasticsearch : http://127.0.0.1:9200/_plugin/head


Notes :
- Build/images/run/ps/modif/stop/start/run/exec/rm/rmi a partir d'un dockefile
- Elasticsearch in docker (by hands)
    - 2 installations différentes pour voir le mécanisme de cache
    - Mettre des TODO pour qu'ils remplissent



## Hands-on #2 : Patterns

- Builder : Builder votre projet favoris avec Docker
    - Java : [fluent-http](https://github.com/CodeStory/fluent-http)
      (maven),
      [spring-security](https://github.com/spring-projects/spring-security)
      (java)
    - Clojure :
      [liberator](https://github.com/clojure-liberator/liberator)
      (clojure), [tentacles](https://github.com/Raynes/tentacles) (clojure)
    - Haskell : [pandoc](https://github.com/jgm/pandoc) (zenika/haskell-make)
    - Tips : l'option ``--rm`` (supprime automatiquement le conteneur s'il
      existe) peut être utile
- Tester l'image elasticsearch avec jdk6, jdk8 ou fluent-http avec jdk7
- Tester des softwares pré-packager
  ([gitlab](https://github.com/sameersbn/docker-gitlab), ..)


Notes :
- Mise en place de pattern simples (préparer dockerfiles)
    - build : qqch à builder
    - env dev : appli (apache, tomcat, bdd) => ça tourne
    - Tests : env dev mais version différentes (plantage si mauvaise version)
    - packaging pull => appli cli (ncurse) [client chat]
    - outils deploy
