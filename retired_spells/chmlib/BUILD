(

  patch -p0 < $SCRIPT_DIR/Makefile.patch &&
  make                                   &&
  prepare_install                        &&
  make install

) > $C_FIFO 2>&1