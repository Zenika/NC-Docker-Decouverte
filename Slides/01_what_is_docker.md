# Qu'est-ce que c'est Docker ?



## Tout le monde en parle



## Depuis mars 2013 à aujourd'hui...

* 18,000+ GitHub stars
* 100M+ Docker Engine downloads
* 75,000+ "Dockerized" applications in the Docker Hub Registry
* 150+ Docker Meetup Groups in 50 countries
* 730+ community contributors
* 50,000 third-party projects on GitHub using Docker as well as partnerships spanning PaaS, operating systems, hosting services, CI platforms, and more.



## Qu'est ce que c'est ?

<br>
> Docker is an open platform for developers and sysadmins to build, ship, and run distributed applications.

<p align="right">*docker.com*
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;</p>

<br>
<br>

> Docker is an open-source project that automates the deployment of applications inside software containers

<p align="right">*wikipedia.org*
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;</p>



## Isolation

<image>



## Isolation des process

LXC
chroot (filesystem jail)
cgroups (control resouces access)
Namespaces


## Format standard pour *livrer*  des applications

<image>

Note :
Livre "The Box" sur la révolution économique qui a suivi l'introduction des conteneurs. Livre préféré par Bill Gates



## Versionning à la Git

Fast Copy on Write (CoW) :
    - AUFS
    - Btrfs
    - OverlyaFS
    - ...

Notes :
http://developerblog.redhat.com/2014/09/30/overview-storage-scalability-docker/



## Architecture

<image>


## Prérequis

Linux : kernel > 3.8

Mac OS et Windows : boot2docker

Note :
Linux : cgroups nécéssaires et sont apparu dans 2.6.24 mais > 3.8 pour des problèmes d'affidabilité du kernel
Windows : client mode



## En resumant

- Isolation des process
- Format standard
- Versionning
