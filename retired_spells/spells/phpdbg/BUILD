(

  sed -i "s:/local::" deferphpize
  prepare_install  &&
  ./deferphpize
  make install
   
) > $C_FIFO 2>&1
