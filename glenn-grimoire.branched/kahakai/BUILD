(
  # only need this for $VERSION < 0.5
  # ./autogen.sh
  
  ./configure --prefix=/usr              \
              $OPTS                      &&
  make                                   &&
  prepare_install                        &&
  make install

) > $C_FIFO 2>&1