(

  ./configure --prefix=/usr   \
	      --enable-smi    \
	      --enable-sming  \
              $OPTS           &&
  make                        &&
  prepare_install             &&
  make    install             &&
  mkdir -p /usr/share/$SPELL  &&
  cp doc/draft-irtf-nmrg-sming-02.txt smi.conf-example /usr/share/$SPELL

) > $C_FIFO 2>&1