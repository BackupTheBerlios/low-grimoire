(
  rm -f /etc/xml/catalog                               &&
  sedit "s/VERSION=4.1.2-9/VERSION=4.1.2/" Makefile    &&
  sedit "s/usr\/share\/xml/usr\/share\/sgml/" Makefile &&
  prepare_install                                      &&
  make INSTALL_DIR=/usr   install

) > $C_FIFO 2>&1
