(

  sedit "s:\$(PREFIX)/bin:\$(PREFIX)/games:" Makefile
  make  PREFIX=/usr  &&
  prepare_install    &&
  make  PREFIX=/usr  install

) > $C_FIFO 2>&1
