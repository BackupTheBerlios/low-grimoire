(
  sed -i "s#all:.*#all:#" doc/Makefile.in &&
  ./configure --prefix=/usr              \
              $OPTS                      &&
  make                                   &&
  prepare_install                        &&
  make install                           &&
  mkdir -p /usr/doc/$SPELL               &&
  cp doc/*.pdf README* /usr/doc/$SPELL

) > $C_FIFO 2>&1