(
  
  ./configure --prefix=/usr              \
              --enable-test              \
              $OPTS                      &&
  make                                   &&
  prepare_install                        &&
  make install                           &&
  cp tools/pantest.8 /usr/man/man8       &&
  cp tools/pantest /usr/bin

) > $C_FIFO 2>&1