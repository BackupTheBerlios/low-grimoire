(
  if [ $VERSION == '5.2.4' ]; then
    ln -s docs/dmalloc.info .
  fi
  
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