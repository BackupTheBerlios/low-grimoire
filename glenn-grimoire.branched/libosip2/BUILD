(
  
  ./configure --prefix=/usr              \
	      --enable-gpref             \
	      --enable-pthread           \
              $OPTS                      &&
  make                                   &&
  prepare_install                        &&
  make install                           &&
  mkdir -p /usr/doc/$SPELL               &&
  cp -R help /usr/doc/$SPELL

) > $C_FIFO 2>&1