sed -i "s:gmake:make:" configure
(

    configure --prefix=/usr	      \
              --sysconfdir=/etc       \
	      $OPTS
    make			      &&
    prepare_install                   &&
    make install

) > $C_FIFO 2>&1

