
(
  ./configure 	  --prefix=/usr \
                  $OPTS              &&
  make				     &&
  prepare_install                    &&
  make install		             &&
  make compile-bee		     &&
  make install-bee
 
) > $C_FIFO 2>&1
