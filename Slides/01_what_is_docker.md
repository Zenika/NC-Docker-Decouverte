# Qu'est-ce que Docker ?



## Pourquoi Docker ?

<br>
<br>
![Commitstrip](ressources/images/commitstrip-reversed.png)

Notes :
Les équipes ne travaillent pas de la meme facon
Il n'y a pas de standard
Docker est utile pour pout l'équipe de DEV et pour les sysadmins
Il permet de mieux communiquer et a definit un standard



## Comment y-est-on arrivé ?

<!-- .element class="fragment" -->
*Quelques dates* :

<!-- .element class="fragment" -->
- **mars 2013 :** dotCloud livre Docker en Open Source

<!-- .element class="fragment" -->
- **aout 2013 :** eBay, Uber, Cloudfare utilisent Docker

<!-- .element class="fragment" -->
- **octobre 2013 :** DotCloud devient Docker Inc.

<!-- .element class="fragment" -->
- **décembre 2013:** Google Compute Engine supporte Docker

<!-- .element class="fragment" -->
- **avril 2014:** Amazon Web Service supporte Docker

<!-- .element class="fragment" -->
- **octobre 2014:** Partnership avec Microsoft

<br>
<!-- .element class="fragment" -->
*Quelques chiffres* :

<!-- .element class="fragment" -->
- 150+ Docker Meetup dans 50 pays

<!-- .element class="fragment" -->
- 18,000+ Github stars

<!-- .element class="fragment" -->
- 100M+ Docker Engine downloads

<!-- .element class="fragment" -->
- 730+ développeurs de la communauté ont contribué



## Ok mais....

<br>
![Commitstrip](ressources/images/what.gif)

Notes :
Nous n'avons toujours pas répondu aux questions suivantes :
Qu'est ce que c'est Docker ?
A quoi est du son succès ?



## Quelques définitions

<br>
> "Docker is an open platform for developers and sysadmins to build, ship, and run distributed applications."

<p align="right">*docker.com*
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;</p>

<br>
<br>
> "Docker is an open-source project that automates the deployment of applications inside software containers"

<p align="right">*wikipedia.org*
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;</p>



## Une métaphore - le transport maritime

![](ressources/images/goldengate-containers.jpg)

Notes :
Pas encore très clair ? Une métaphore est plus piussante que 1000 définitions.
Docker a pas mal de similitudes avec le transport maritime par conteneurs
Le paquebot représente le systeme hote et la marchandise correspond aux process.
Dans les présentation de Docker on insiste beaucoup sur cette comparaison...



## Une métaphore - une révolution

![](ressources/images/thebox-thebook.png)

<figure style="position: absolute; bottom: 30px; right: 0;">
    <img src="ressources/images/bill-gates.png" alt="Bill Gates"/>
</figure>

Notes :
Le transport maritime par conteneurs a été une révolution.
C'est un des livres préférés par Bill Gates en 2013 



## Architecture

![](ressources/images/docker-architecture.svg)

Notes :
Il y une partie cliente et une partie serveur (engine)



### Caractéristiques
<br>

- Définition d'un standard
- Process isolés
- Virtualisation "légère"
- Versionning (containers et images)



## Détails techniques : Isolation

![](ressources/images/docker-isolation.png)

Notes :
libcontainer : depuis docker 0.9, une strate d'abstraction supplémentaire et rend Docker indépendant de LXC



##  Détails techniques : Versionning à la Git

![](ressources/images/docker-filesystems-multilayer.png)

```go
// Slice of drivers that should be used in an order
 priority = []string{
 "aufs",
 "btrfs",
 "devicemapper",
 "vfs",
 "overlayfs",
```


Notes :
http://developerblog.redhat.com/2014/09/30/overview-storage-scalability-docker/



## Prérequis

- Linux : kernel version > 3.8

- Mac OS et Windows : boot2docker

Notes :
Linux : cgroups nécéssaires et sont apparu dans 2.6.24 mais > 3.8 pour des problèmes d'affidabilité du kernel
Windows : client mode
