(
  
  ./configure --prefix=/usr              \
	      --enable-gpref             \
	      --enable-pthread           \
              $OPTS                      &&
  make                                   &&
  prepare_install                        &&
  make install

) > $C_FIFO 2>&1