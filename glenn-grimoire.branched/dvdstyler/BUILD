(
  # the install location is atrocious, fix later
  sed -i "s:/local::" Makefile &&
  make                         &&
  prepare_install              &&
  make install

) > $C_FIFO 2>&1