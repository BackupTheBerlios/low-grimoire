(

  make stage1
  cd src
  ./configure  --prefix=/usr         \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               $OPTS                 &&
  prepare_install  &&
  make    all  
   
) > $C_FIFO 2>&1
