(
  cd /usr/src/sorcery.cvs/$SPELL/M	&&

  ./configure --prefix=/usr		\
               $OPTS                    &&
  make					&&
  prepare_install			&&
  make    install			&&
  make realclean
  
) > $C_FIFO 2>&1

