(

  if  module_installed  Linux-PAM;  then
    OPTS=$OPTS" --enable-shadow $ENABLE_PAM"
  fi

  sedit  "s/	standalone/	inetd/" sample-configurations/basic.conf  &&
  cp  -r  sample-configurations  doc

  default_build &&

  [ -e /usr/share/man/man1/ftpcount.1 ] && gzip -9 /usr/share/man/man1/ftpcount.1
  [ -e /usr/share/man/man1/ftpwho.1   ] && gzip -9 /usr/share/man/man1/ftpwho.1
  [ -e /usr/share/man/man5/xferlog.5  ] && gzip -9 /usr/share/man/man5/xferlog.5
  [ -e /usr/share/man/man8/ftpshut.8  ] && gzip -9 /usr/share/man/man8/ftpshut.8
  [ -e /usr/share/man/man8/proftpd.8  ] && gzip -9 /usr/share/man/man8/proftpd.8
  
) > $C_FIFO 2>&1
