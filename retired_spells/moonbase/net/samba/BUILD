(

  if  module_installed  Linux-PAM;  then
    WITH_PAM="--with-pam  --with-pam_smbpass"
  fi

  cd  source
  ./configure  --prefix=/usr           \
               --sysconfdir=/etc       \
               --localstatedir=/var    \
               --with-piddir=/var/run  \
               --with-smbmount         \
               --with-fhs              \
               --mandir=/usr/share/man \
               $WITH_PAM               \
               $OPTS                   || exit 1
               
  cp Makefile Makefile.orig            &&
  sedit "s/-msse2//g" Makefile

  make                                 &&
  prepare_install                      &&
  mkdir  -p  /etc/samba                &&
  mkdir  -p  /usr/share/samba          &&
  mkdir  -p  /var/log/samba            &&
  make    install

) > $C_FIFO 2>&1  &&  (

  if  [  -d  /usr/private  ];  then
    rmdir    /usr/private
    true
  fi

)
