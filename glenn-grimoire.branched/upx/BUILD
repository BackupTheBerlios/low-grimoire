(
  export UCLDIR=/usr                     &&
  cd src/                                &&
  make target=linux                      &&
  prepare_install                        &&
  install -o root -g root -m 755 upx /usr/bin

) > $C_FIFO 2>&1