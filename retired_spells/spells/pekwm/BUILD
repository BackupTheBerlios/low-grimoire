(

  ./configure  --prefix=/usr         \
	       --enable-shape	     \
	       --enable-xinerama     \
 	        --enable-menus       \
	        --enable-harbour    $OPTS                 &&
  make             &&
  prepare_install  &&
  make    install  
   
) > $C_FIFO 2>&1
