(
  
  ./configure --prefix=/usr              \
              $OPTS                      &&
  make                                   &&
  prepare_install                        &&
  make install                           &&
  mkdir -p /usr/doc/$SPELL               &&
  cp -R README doc /usr/doc/$SPELL       &&
  mkdir -p /usr/share/$SPELL             &&
  cp -R tests /usr/share/$SPELL

) > $C_FIFO 2>&1