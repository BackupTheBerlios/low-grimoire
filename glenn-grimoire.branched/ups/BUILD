(
  
  ./configure --prefix=/usr              \
              --enable-math              \
	      --enable-longlong          \
	      --enable-longdouble        \
	      --with-xt                  \
              $OPTS                      &&
  make                                   &&
  prepare_install                        &&
  make install                           &&
  install -o root -g root -m 755 tkups /usr/bin
  # might should install med that comes with it

) > $C_FIFO 2>&1