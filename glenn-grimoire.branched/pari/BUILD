(
  ./Configure --prefix=/usr   \
              $OPTS           &&
  make gp                     &&
  prepare_install             &&
  make    install  prefix=/usr

) > $C_FIFO 2>&1