(

  ./configure --prefix=/usr   \
	      --enable-cplusplus \
	      --enable-full-debug \
              $OPTS           &&
  make                        &&
  prepare_install             &&
  make    install

) > $C_FIFO 2>&1