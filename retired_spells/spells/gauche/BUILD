(
  ./configure --prefix=/usr      		\
              --enable-threads=pthreads		\
              $OPTS 		 		&&
  make				 		&&
  prepare_install                		&&
  make install

) > $C_FIFO 2>&1
