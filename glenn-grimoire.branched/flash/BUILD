(
  sed -i -e "10i #include <math.h>" Lib/swf.h &&
  sed -i -e "6i CPP=g++" Player/Makefile      &&
  sed -i -e "10s:CC:CPP:" Player/Makefile     &&
  make -C Zlib                                &&
  make -C Jpeg                                &&
  make -C Lib                                 &&
  make -C Plugin                              &&
  make -C Player                              &&
  prepare_install                             &&
  install -o root -g root -m 644 Lib/flash.h /usr/include  &&
  install -o root -g root -m 644 Lib/libflash.a /usr/lib   &&
  install -o root -g root -m 644 Player/swfplayer /usr/bin &&
  mkdir /usr/share/$SPELL                                  &&
  install -o root -g root -m 644 Plugin/npflash.so /usr/share/$SPELL &&
  install -o root -g root -m 644 Test/ScreenSaver.swf /usr/share/$SPELL

) > $C_FIFO 2>&1