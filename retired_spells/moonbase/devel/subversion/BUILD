(
  sedit "s/db4 db/db-4/" configure.in   &&
  ./autogen.sh				&&
  OPTS="--with-zlib --with-ssl $OPTS"	&&

  ./configure --prefix=/usr --sysconfdir=/etc $OPTS &&

  for f in `find -name Makefile`; do
  	sedit 's?-ldb ?-ldb-4 ?g' $f
  done					&&

  default_make
  
) 2>&1 > $C_FIFO
