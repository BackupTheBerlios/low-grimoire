(

  sed -i "s:/local::" Makefile.PL
  perl Makefile.PL &&
  make             &&
  prepare_install  &&
  make    install  
   
) > $C_FIFO 2>&1
