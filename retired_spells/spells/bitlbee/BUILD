(
  ./configure  --prefix=/usr         &&
  make                               &&
  echo "Sorcerer Specific follows"   &&
  cd utils                           &&
  echo "Compiling bitlbeed.c"        &&
  gcc bitlbeed.c -o bitlbeed         &&
  cd ..                              &&
  echo "End Sorcerer Specific"       &&
  prepare_install                    &&
  make    install		     &&
  install -p -m 0755 -o root -g 0 utils/bitlbeed /usr/sbin

) > $C_FIFO 2>&1
