(
 OPTS=$OPTS"--bindir=/usr/bin --prefix=/usr --sbindir=/usr/sbin --datadir=/usr/share --sysconfdir=/etc --infodir=/usr/share/info --mandir=/usr/share/man" 
 ./autogen.sh $OPTS     &&
 make                   &&
 prepare_install        &&
 make install
 
) > $C_FIFO 2>&1  &&

ldconfig
