(

  ./configure --prefix=/usr    \
              --with-xinerama  \
              --enable-objprelink \
	      --enable-profile \
              $OPTS           &&
  make                        &&
  prepare_install             &&
  make    install  prefix=/usr

) > $C_FIFO 2>&1