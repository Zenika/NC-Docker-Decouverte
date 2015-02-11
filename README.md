Nightclazz Docker Découverte
============================

To run it :

```bash
$ docker run -it -v $PWD:/data --rm dockerfile/nodejs-bower-grunt npm install
# […]
$ docker run -it -v $PWD:/data --net=host --rm dockerfile/nodejs-bower-grunt grunt
```

Images needed (to gain some time)
```bash
docker pull debian:jessie
docker pull maven:3-jdk-6
docker pull maven:3-jdk-7
docker pull maven:3-jdk-8
# docker pull java # should have been puled by maven3
docker pull zenika/haskell-make
docker pull clojure
docker pull ubuntu
docker pull fedora
docker pull gitlab
```
