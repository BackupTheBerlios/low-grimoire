(
  ./configure --prefix=/usr     \
              --with-html-dir=/usr/doc/$SPELL \
              $OPTS             &&
  make                          &&
  prepare_install               &&
  make    install

) > $C_FIFO 2>&1