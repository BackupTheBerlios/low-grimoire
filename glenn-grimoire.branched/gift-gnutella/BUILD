(
  
  ./configure --prefix=/usr              \
              $OPTS                      &&
  make                                   &&
  prepare_install                        &&
  make install                           &&
  mkdir -p /usr/doc/$SPELL               &&
  cp README INSTALL NEWS TODO /usr/doc/$SPELL

) > $C_FIFO 2>&1