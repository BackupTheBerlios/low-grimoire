(
  sed -i "s:/local::" Makefile
  sed -i "s:-O2:$CFLAGS:" Makefile
  ./configure --prefix=/usr      		\
              $OPTS 		 		&&
  make				 		&&
  prepare_install                		&&
  make install

) > $C_FIFO 2>&1
