(
  
  ./configure --prefix=/usr      \
              --etcdir=/etc      \
              $OPTS              &&
  make                           &&
  prepare_install                &&
  make install                   &&
  mkdir -p /usr/share/$SPELL     &&
  cp axelrc.example /usr/share/$SPELL &&
  if [ -n $( augur installed Python ) ]; then
    cd gui/kapt
    make install
  fi

) > $C_FIFO 2>&1