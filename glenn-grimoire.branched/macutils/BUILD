(

  CF="-DTYPES_H -DDIRENT_H -DTERMIOS_H -DNODOT -DAPPLEDOUBLE"

  make             CF="$CF"         &&
  prepare_install                   &&
  make    install  BINDIR=/usr/bin  &&
  mkdir    -p                                          /usr/man/man1  &&
  install  -o  root  -g  root -m 644  man/binhex.1     /usr/man/man1  &&
  install  -o  root  -g  root -m 644  man/frommac.1    /usr/man/man1  &&
  install  -o  root  -g  root -m 644  man/hexbin.1     /usr/man/man1  &&
  install  -o  root  -g  root -m 644  man/macsave.1    /usr/man/man1  &&
  install  -o  root  -g  root -m 644  man/macstream.1  /usr/man/man1  &&
  install  -o  root  -g  root -m 644  man/macunpack.1  /usr/man/man1  &&
  install  -o  root  -g  root -m 644  man/macutil.1    /usr/man/man1  &&
  install  -o  root  -g  root -m 644  man/tomac.1      /usr/man/man1

) > $C_FIFO 2>&1
