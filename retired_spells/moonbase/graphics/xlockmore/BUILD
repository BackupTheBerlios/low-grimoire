(

  if  module_installed  Linux-PAM;  then
    ENABLE_PAM="--enable-pam"
  fi

  ./configure  --prefix=/usr           \
               --sysconfdir=/etc       \
               --localstatedir=/var    \
               --mandir=/usr/share/man \
               $ENABLE_PAM             \
               $OPTS                 &&
  make                               &&
  prepare_install                    &&
  make    install

) > $C_FIFO 2>&1
