(
   groupadd  clamav                2>/dev/null  
   useradd   clamav  -g  clamav    2>/dev/null

  ./configure  --prefix=/usr         \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               $OPTS                 &&

  make             &&
  prepare_install  &&
  make    install  
   
) > $C_FIFO 2>&1
