(
  patch -p1 < $SCRIPT_DIR/pks094-patch2    &&
  rm -r db2-sleepycat                      &&
  sed -i "s:^	for i.*::" Makefile.in     &&
  sed -i "s:^LIBDB.*:LIBDB = -static -ldb:" Makefile.in &&
  ./configure --prefix=/usr                &&
  make                                     &&
  prepare_install                          &&
  make install                             

) > $C_FIFO 2>&1