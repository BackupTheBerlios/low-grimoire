(

  ./configure  --prefix=/usr              \
               --sysconfdir=/etc     	  \
               --localstatedir=/var       \
	       --enable-install-spreaded  \
               $OPTS                 &&
  prepare_install  &&
  make    install  
   
) > $C_FIFO 2>&1
