(

  ./configure     --prefix=/usr          \
                  $OPTS                 &&
  sedit  "s/var\/lib\/games/usr\/share\/games\/lbreakout/"  Makefile  &&
  sedit  "s/var\/lib\/games/usr\/share\/games\/lbreakout/"  lbreakout/Makefile  &&
  make                                  &&
  prepare_install                       &&
  make    install                       &&
  mv  /usr/bin/lbreakout  /usr/games

) > $C_FIFO 2>&1
