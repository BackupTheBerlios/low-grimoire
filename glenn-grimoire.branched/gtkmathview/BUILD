(
  if [ "$VERSION" == "0.4.2" ]; then
    sed -i "s:T1_Get_no_fonts:T1_GetNoFonts:" src/T1_FontManager.cc
  fi
  
  ./configure --prefix=/usr     \
              --with-html-dir=/usr/doc/$SPELL \
              $OPTS             &&
  make                          &&
  prepare_install               &&
  make    install

) > $C_FIFO 2>&1