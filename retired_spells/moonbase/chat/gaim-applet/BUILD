(

   cd  $SOURCE_DIRECTORY                                        &&
   ./configure  --prefix=/usr                                   \
                --sysconfdir=/etc                               \
                --localstatedir=/var                            \
                --enable-panel                                  \
                $OPTS                                           &&
    
   make                                                         &&
   prepare_install                                              &&
   make    install

) > $C_FIFO 2>&1
