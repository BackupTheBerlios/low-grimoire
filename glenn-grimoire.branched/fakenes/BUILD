(

  patch -p0 < $SCRIPT_DIR/Makefile.in.patch    &&
  ./configure --prefix=/usr   &&
  make                        &&
  prepare_install             &&
  make install                &&
  mkdir -p /usr/doc/$SPELL    &&
  cp README /usr/doc/$SPELL

) > $C_FIFO 2>&1