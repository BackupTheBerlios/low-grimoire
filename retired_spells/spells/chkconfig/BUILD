(

  ./configure  --prefix=/usr                         \
               --bindir=/usr/bin                     \
	       --sbindir=/sbin                       \
	       --datadir=/usr/share                  \
	       --sysconfdir=/etc                     \
	       --mandir=/usr/share/man               \
	       --enable-mandatory-headers            \
	       --with-init-dir=/etc/init.d           \
	       --with-rc-dir=/etc                    \
               --enable-mandatory-headers            \
	       $OPTS       &&
	       
  make                                               &&
  prepare_install                                    &&
  make    install
  
) > $C_FIFO 2>&1
