(

  sedit "s/\${DESTDIR}\/usr\/local/\/usr/"    utils/Makefile.config &&
  sedit "s/prefix)\/man/prefix)\/share\/man/" utils/Makefile.config &&
  sedit "s/\$(prefix)\/etc/\/etc/"            utils/Makefile.config &&
  make                                &&
  prepare_install                     &&
  make install                        &&
  make tools                          &&
  make install-tools                  &&
  cd utils/scripts                    &&
  make install

) > $C_FIFO 2>&1
