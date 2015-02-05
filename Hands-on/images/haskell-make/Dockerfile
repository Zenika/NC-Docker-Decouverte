FROM haskell
MAINTAINER Vincent Demeester <vincent.demeester@zenika.com>

RUN apt-get -y install make
ADD haskell-make-entrypoint.sh /
RUN chmod +x /haskell-make-entrypoint.sh

ENTRYPOINT ["/haskell-make-entrypoint.sh"]
