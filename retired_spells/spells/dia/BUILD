(

  case $VERSION in
	0.91)
  	cp $SCRIPT_DIR/dia-0.91-Cisco-Makefile.in  $BUILD_DIR/shapes/Cisco/Makefile.in &&  
  esac
  ./configure  --prefix=/usr         \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               $OPTS                 &&
  make             &&
  prepare_install  &&
  make    install  
   
) > $C_FIFO 2>&1
