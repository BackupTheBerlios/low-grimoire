(
  #OPTS="--enable-debug --enable-storage=\"pgsql db fs\" --enable-authreg=\"anon pipe pgsql pam ldap db\""
  #echo $OPTS >> myconfig
  #default_build
  
  #./configure --prefix=/usr   \
  #            $OPTS           &&
  ./configure --prefix=/usr   \
              --sysconfdir=/etc \
	      --localstatedir=/var \
              --enable-debug  \
              --enable-storage="pgsql db fs"  \
	      --enable-authreg="anon pipe pgsql pam db" &&
  make                        &&
  prepare_install             &&
  make install                &&
  mkdir -p /usr/share/jabberd &&
  cp tools/db* tools/pipe-auth.pl /usr/share/jabberd

) > $C_FIFO 2>&1