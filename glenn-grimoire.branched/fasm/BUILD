(
  cd source/Linux             &&
  ../../fasm fasm.asm fasm    &&
  chmod +x fasm               &&
  prepare_install             &&
  install  -o root -g root -m 755  fasm  /usr/bin &&
  mkdir -p /usr/share/fasm                        &&
  cp -R ../../examples  /usr/share/fasm/

) > $C_FIFO 2>&1