(

  ./configure --prefix=/usr   \
              --enable-3dnow  \
              $OPTS           &&
  make                        &&
  prepare_install             &&
  make    install  prefix=/usr

) > $C_FIFO 2>&1