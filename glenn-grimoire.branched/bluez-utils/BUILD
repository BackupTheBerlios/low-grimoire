(
  
  ./configure --prefix=/usr              \
              --sysconfdir=/etc          \
              --enable-pcmcia            \
              $OPTS                      &&
  make                                   &&
  prepare_install                        &&
  make install

) > $C_FIFO 2>&1