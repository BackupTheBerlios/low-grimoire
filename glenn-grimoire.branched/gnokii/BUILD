(
  
  ./configure --prefix=/usr              \
              --enable-security          \
              $OPTS                      &&
  make                                   &&
  prepare_install                        &&
  make install                           &&
  make install-docs

) > $C_FIFO 2>&1