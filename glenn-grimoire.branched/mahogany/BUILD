(
  cd /usr/src/sorcery.cvs/$SPELL/M	&&

  ./configure --prefix=/usr		\
	      --with-modules=dynamic    \
               $OPTS                    &&
  make					&&
  prepare_install			&&
  make    install			
  
) > $C_FIFO 2>&1

