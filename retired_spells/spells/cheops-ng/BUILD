(

  case $VERSION in
    0.1.12)
          patch -p1 < $SCRIPT_DIR/cheops-ng-0.1.12.patch
  esac

  ./configure  --prefix=/usr         \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               $OPTS                 &&
  make             &&
  prepare_install  &&
  make    install  
   
) > $C_FIFO 2>&1
