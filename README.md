NC-Docker
=========

To run it :

```bash
$ docker run -it -v $PWD:/data --rm dockerfile/nodejs-bower-grunt npm install
# […]
$ docker run -it -v $PWD:/data --net=host --rm dockerfile/nodejs-bower-grunt grunt
```
