(
  ./configure --prefix=/usr              \
              --enable-cxx               \
	      --enable-threads           \
	      --enable-shlib             \
              $OPTS                      &&
  make                                   &&
  prepare_install                        &&
  make install                           &&
  make installinfo                       &&
  make installdocs

) > $C_FIFO 2>&1