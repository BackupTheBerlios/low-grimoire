(

  bad_flags -malign-double
  
  ./configure  --build=$BUILD           \
               --mandir=/usr/share/man  &&
  default_make                          &&
  install -m0700 $SCRIPT_DIRECTORY/init.d/modutils /etc/init.d   &&
  ln -sf ../init.d/modutils /etc/rcS.d/S20modutils 

)  > $C_FIFO 2>&1

