(
  ./configure --enable-posix-shm  \
	      --enable-optimize   \
	      --enable-timestamps \
	      --with-html-dir=/usr/doc/$SPELL \
              $OPTS           &&
  make                        &&
  prepare_install             &&
  make    install  prefix=/usr

) > $C_FIFO 2>&1