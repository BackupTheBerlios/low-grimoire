(
  
  sed -i "s:local/pcsc:pcsc:" Makefile  &&
  make                                  &&
  prepare_install                       &&
  mkdir -p /usr/pcsc/drivers            &&
  make install
  
) > $C_FIFO 2>&1