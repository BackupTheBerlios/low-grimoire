(
  sedit "s/#TARGET=LINUX_STATIC/TARGET=LINUX_STATIC/" makefile

  make                        &&
  prepare_install             &&
  install  -o root -g root -m 644  lib/linux/libalmp3.a /usr/lib &&
  cp include/* /usr/include/

) > $C_FIFO 2>&1