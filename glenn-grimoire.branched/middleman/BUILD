(
  
  ./configure --prefix=/usr  \
              $OPTS          &&
  make                       &&
  prepare_install            &&
  make    install            &&
  mkdir -p /usr/doc/$SPELL   &&
  cp README* /usr/doc/$SPELL &&
  mkdir -p /usr/share/$SPELL &&
  cp scripts/* /usr/share/$SPELL

) > $C_FIFO 2>&1
