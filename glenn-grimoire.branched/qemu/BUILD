(
  sed -i "s:/share/doc/qemu:/doc/qemu:" configure &&
  ./configure --prefix=/usr   \
              $OPTS           &&
  make                        &&
  prepare_install             &&
  make    install  prefix=/usr

) > $C_FIFO 2>&1