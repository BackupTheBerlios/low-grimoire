(
  
  ./configure --prefix=/usr                   \
              --sysconfdir=/etc               \
              --enable-http-cache             \
              --enable-local-cache            \
              --enable-virus-scan             \
	      --enable-libiptc                \
              --enable-transparent-data       \
              --enable-ccp                    \
              $OPTS                           &&
  make                                        &&
  prepare_install                             &&
  make install                                &&
  mkdir -p /usr/doc/$SPELL                    &&
  cp doc/* /usr/doc/$SPELL

) > $C_FIFO 2>&1