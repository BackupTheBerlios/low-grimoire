(
  ./configure --enable-dns      \
              $OPTS             &&
  make                          &&
  prepare_install               &&
  make    install  prefix=/usr  &&
  mkdir -p /usr/doc/$SPELL      &&
  cp DNS.README /usr/doc/$SPELL &&
  mkdir -p /usr/share/$SPELL    &&
  cp sample.conf /usr/share/$SPELL &&
  cp country-codes.txt /usr/share/$SPELL

) > $C_FIFO 2>&1