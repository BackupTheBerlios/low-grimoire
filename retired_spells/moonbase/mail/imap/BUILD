( 
  cd $SOURCE_DIRECTORY &&
    if  module_installed  Linux-PAM
      then  make lnp SPECIALS="SSLDIR=/etc/ssl SSLINCLUDE=/usr/include SSLLIB=/usr/lib" SSLTYPE=unix

      else  make slx SPECIALS="SSLDIR=/etc/ssl SSLINCLUDE=/usr/include SSLLIB=/usr/lib" SSLTYPE=unix

    fi &&
    prepare_install                                        &&
    cp imapd/imapd /usr/sbin/imapd                         &&
    cp ipopd/ipop3d /usr/sbin/ipop3d                       &&
    
    # install the man pages
    mv src/ipopd/ipopd.8c src/ipopd/ipopd.8                &&
    gzip -9 src/ipopd/ipopd.8                              &&
    cp src/ipopd/ipopd.8.gz /usr/share/man/man8/ipopd.8.gz &&
    mv src/imapd/imapd.8c src/imapd/imapd.8                &&
    gzip -9 src/imapd/imapd.8                              &&
    cp src/imapd/imapd.8.gz /usr/share/man/man8/imapd.8.gz

  ) > $C_FIFO 2>&1
