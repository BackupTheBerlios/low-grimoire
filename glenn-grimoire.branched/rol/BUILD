(
  sed -i "s:/local::" src/Makefile                 &&
  make                                   &&
  prepare_install                        &&
  make install

) > $C_FIFO 2>&1