(

  sed -i "s:-Wall -Wstrict-prototypes -O2:$CFLAGS:" Makefile
  sed -i "s:/local::" Makefile
  make             &&
  prepare_install  &&
  make    install  
   
) > $C_FIFO 2>&1
