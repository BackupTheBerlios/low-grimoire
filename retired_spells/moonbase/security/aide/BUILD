(

  ./configure  --build=$BUILD        \
               --prefix=/usr         \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               $OPTS                 &&
 
  make                               &&
  prepare_install                    &&
  make    install
  
  if ! [ -e /etc/aide.conf.sample ]; then
      cp doc/aide.conf /etc/aide.conf.sample
  fi
  

) > $C_FIFO 2>&1 

