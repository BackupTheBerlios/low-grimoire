(
  CLIENT_FILE="asdcat asdctl asdduplex asdfilter asdinfo asdlock asdls asdmon asdrec asdstream asdunlock asdversion"
  SERVER_FILE="asd"

  make                        &&
  prepare_install             &&
  cd clients                  &&
  install  -o root -g root -m 755 $CLIENT_FILE /usr/bin &&
  cd ../daemon                &&
  install  -o root -g root -m 755 $SERVER_FILE /usr/bin

) > $C_FIFO 2>&1