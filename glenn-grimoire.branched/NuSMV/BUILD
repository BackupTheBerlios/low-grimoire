(
  
  cd cudd-2.3.0.1                         &&
  make                                    &&
  cd ../nusmv                             &&
  default_build                           &&
  cp -r examples contrib /usr/share/nusmv &&
  mkdir -p /usr/doc/$SPELL                &&
  cp -r doc/* /usr/doc/$SPELL
  
#  ./configure --prefix=/usr              \
#              $OPTS                      &&
#  make                                   &&
#  prepare_install                        &&
#  make install

) > $C_FIFO 2>&1