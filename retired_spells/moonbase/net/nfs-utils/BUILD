unalias  make

(

  ./configure  --prefix=/usr  --mandir=/usr/share/man  &&
  make                        &&
  prepare_install             &&
  make    install             &&

  if [ -e "/etc/init.d/nfslock.sh" ]; then
     rm -f /etc/init.d/nfslock.sh
     rm -f /etc/rc?.d/???nfslock.sh
  fi &&

  if [ -e "/etc/init.d/nfs.sh" ]; then
    rm -f /etc/init.d/nfs.sh
    rm -f /etc/rc?.d/???nfs.sh
  fi

) > $C_FIFO 2>&1
