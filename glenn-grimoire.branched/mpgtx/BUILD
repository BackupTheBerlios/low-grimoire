(
  sed -i "s:/usr/local:/usr:" configure
  ./configure --prefix=/usr \
              --parachute   \
              $OPTS         &&
  make                      &&
  prepare_install           &&
  make install

) > $C_FIFO 2>&1